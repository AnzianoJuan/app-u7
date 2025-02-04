<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentacion._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div class="container text-center mt-5">
    <!-- 🎉 Mensaje de éxito -->
    <h1 class="text-success fw-bold animate__animated animate__fadeInDown">
        ✅ ¡Te logueaste correctamente!
    </h1>

    <!-- 🚀 Botones de opciones -->
    <div class="mt-4">
        <asp:Button ID="ButtonOp1" runat="server" Text="Opción 1" OnClick="ButtonOp1_Click"  CssClass="btn btn-primary btn-lg mb-3 shadow-sm" />
    </div>

    <div class="d-flex justify-content-center align-items-center gap-3">
        <asp:Button ID="ButtonOp2" runat="server" Text="Opción 2" OnClick="ButtonOp2_Click" CssClass="btn btn-secondary btn-lg shadow-sm" />
        <asp:Label ID="Label1" runat="server" Text="⚠️ Debes ser administrador" CssClass="text-danger fw-bold"></asp:Label>
    </div>
</div>


</asp:Content>
