﻿<%@ Page Title="" Language="C#" MasterPageFile="~/demo.Master" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="WEEK1_DEMO.signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHmain" runat="server">


    <%--username validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ID="rfvUsername" runat="server" Display="None" ControlToValidate="txtUsername" ErrorMessage="Username is required"></asp:RequiredFieldValidator>--%>
        </div>
    </div>
    <br />
    <br />

    <%--password validator, textbox and label--%>
    <div class="form-group col-lg-8 col-md-offset-2">
        <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
        <div class="col-lg-10">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <%-- <asp:RequiredFieldValidator ID="rfvPassword" runat="server" Display="None" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>--%>
        </div>
    </div>

    <asp:Label ID="lblSalt" runat="server"></asp:Label>
    <asp:Label ID="lblPwd" runat="server"></asp:Label>
    <asp:Label ID="lblHashedPw" runat="server"></asp:Label>


    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>



    <asp:Button ID="btnForgotPassword" runat="server" CssClass="col-lg-4 btn btn-default" Text="Forgot Password" />
    <%--<asp:ValidationSummary ID="vsForm" ShowSummary="true" ShowMessageBox="true" runat="server" />--%>

    <br />
    <br />
</asp:Content>
