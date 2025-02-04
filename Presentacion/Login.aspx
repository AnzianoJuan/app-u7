<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentacion.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


  <div class="container mt-4">
    <div class="card shadow-lg p-4" style="max-width: 400px; margin: auto;">
        <h3 class="text-center text-primary">Iniciar Sesión</h3>
        <div class="mb-3">
            <asp:Label ID="LabelUser" runat="server" AssociatedControlID="TextBoxUser" CssClass="form-label fw-bold">Usuario</asp:Label>
            <asp:TextBox ID="TextBoxUser" runat="server" CssClass="form-control" Placeholder="Ingrese su usuario"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label ID="LabelPss" runat="server" AssociatedControlID="TextBoxPass" CssClass="form-label fw-bold">Contraseña</asp:Label>
            <asp:TextBox ID="TextBoxPass" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Ingrese su contraseña"></asp:TextBox>
        </div>
        <div class="text-center">
            <asp:Button ID="BtnLogin" runat="server" Text="Ingresar" OnClick="BtnLogin_Click" CssClass="btn btn-primary w-100" />
        </div>
    </div>
</div>




</asp:Content>
