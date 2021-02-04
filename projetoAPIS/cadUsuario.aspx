<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadUsuario.aspx.cs" Inherits="projetoAPIS.cadUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Projeto Consumindo API</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cadastro de Usuário</h1>

            <label>Nome</label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <label>CEP</label>
            <br />
            <asp:TextBox ID="txtCEP" runat="server"></asp:TextBox>
            <asp:Button ID="btnCEP" runat="server" Text="Consultar CEP" OnClick="btnCEP_Click" />
            <br />
            <label>Endereço</label>
            <br />
            <asp:TextBox ID="txtEndereço" runat="server"></asp:TextBox>
            <br />
            <label>Bairro</label>
            <br />
            <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
            <br />
            <label>Cidade</label>
            <br />
            <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
            <br />
            <label>UF</label>
            <br />
            <asp:TextBox ID="txtUF" runat="server"></asp:TextBox>
            <br />
            <label>E-mail</label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <label>Senha</label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:FileUpload ID="fpFoto" runat="server" />
            <br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Register" OnClick="btnCadastrar_Click" />
            <asp:Button ID="btnBack" runat="server" Text="Home" OnClick="btnBack_Click" />

            <asp:GridView ID="gridUsuario" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSourceUsuario" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:ImageField DataAlternateTextField ="caminhoFoto"  ControlStyle-Height="30px" HeaderText="Foto"></asp:ImageField>
                    <asp:BoundField DataField="codigo" Visible="false" HeaderText="Code" ReadOnly="True" InsertVisible="False" SortExpression="codigo"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="Name" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="cep" HeaderText="CEP" SortExpression="cep"></asp:BoundField>
                    <asp:BoundField DataField="endereco" HeaderText="Endereço" SortExpression="endereco"></asp:BoundField>
                    <asp:BoundField DataField="bairro" HeaderText="Bairro" SortExpression="bairro"></asp:BoundField>
                    <asp:BoundField DataField="cidade" HeaderText="City" SortExpression="cidade"></asp:BoundField>
                    <asp:BoundField DataField="estado" HeaderText="State" SortExpression="estado"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email"></asp:BoundField>
                    <asp:BoundField DataField="senha" Visible="false" HeaderText="Password" SortExpression="senha"></asp:BoundField>
                    <asp:BoundField DataField="nomeFoto" Visible="false" HeaderText="Photo" SortExpression="nomeFoto"></asp:BoundField>
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource runat="server" ID="SqlDataSourceUsuario" ConnectionString='<%$ ConnectionStrings:pjAPIConnectionString %>' SelectCommand="select '/fotoUsuario/' + nomeFoto as caminhoFoto, * from tabusuario"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
