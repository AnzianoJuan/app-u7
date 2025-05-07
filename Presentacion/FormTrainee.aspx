<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormTrainee.aspx.cs" Inherits="Presentacion.FormTrainee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="card shadow-lg mt-5">
            <div class="card-body">
                <h3 class="text-center text-primary">Registro</h3>
                    <div class="mb-3">
                        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" CssClass="form-label fw-bold">Email</asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" CssClass="form-label fw-bold">Contraseña</asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-success w-100" Text="Registrarse" OnClick="btnRegister_Click" />
                    </div>
            </div>
        </div>
    </div>
    
    <!-- Enlace a Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">



</asp:Content>
