<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EnvioMails.aspx.cs" Inherits="Presentacion.EnvioMails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-4">
        <div class="card shadow-lg p-4" style="max-width: 400px; margin: auto;">
            <h3 class="text-center text-primary">Envio de Mails</h3>
            <div class="mb-3">
                <asp:Label ID="LabelMail" runat="server" AssociatedControlID="TextBoxMail" CssClass="form-label fw-bold">Mail</asp:Label>
                <asp:TextBox ID="TextBoxMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="LabelAsunto" runat="server" AssociatedControlID="TextBoxAsunto" CssClass="form-label fw-bold">Asunto</asp:Label>
                <asp:TextBox ID="TextBoxAsunto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="LabelMensaje" runat="server" AssociatedControlID="TextBoxMensaje" CssClass="form-label fw-bold">Mensaje</asp:Label>
                <asp:TextBox ID="TextBoxMensaje" runat="server"  TextMode="MultiLine"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="text-center">
                <asp:Button ID="BtnAceptarEnvio" runat="server" Text="Aceptar" OnClick="BtnAceptarEnvio_Click" CssClass="btn btn-primary w-100" />
            </div>
        </div>
    </div>


</asp:Content>
