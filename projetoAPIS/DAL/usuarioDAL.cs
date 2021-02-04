using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace projetoAPIS.DAL
{
    public class usuarioDAL
    {
        public tabUsuario ConsultTabEmail(string email)
        {
            using (pjAPIEntities ctx = new pjAPIEntities())
            {
                return ctx.tabUsuario.Where(c => c.email == email).FirstOrDefault();  
            }
        }

        public void RegisterUser (tabUsuario objU)
        {
            using (pjAPIEntities ctx = new pjAPIEntities())
            {
                ctx.tabUsuario.Add(objU);
                ctx.SaveChanges();
            }
        }
    }
}