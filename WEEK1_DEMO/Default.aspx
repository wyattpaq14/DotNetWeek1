<%@ Page Title="" Language="C#" MasterPageFile="~/demo.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WEEK1_DEMO._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHmain" runat="server">


    <asp:Label ID="lblItemCount" runat="server" CssClass="form-control" Text="I am a lable"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="ddlItems" runat="server" CssClass="form-control"></asp:DropDownList>
    <br />
    <asp:Button ID="btnItems" runat="server" CssClass="form-control" Text="Button" OnClick="btnItems_Click"/>
    <br />
    <asp:CheckBox ID="cbxDisable" OnCheckedChanged="cbxDisable_CheckedChanged" runat="server" CssClass="form-control" Text="Disable"/>
    <asp:RequiredFieldValidator ID="rfvItems" runat="server" Display="None" ErrorMessage="Must Choose Item!" ControlToValidate="ddlItems" InitialValue="I am an item!"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtValidation" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvValidate" runat="server" Display="None" ControlToValidate="txtValidation" ErrorMessage="Text is required"></asp:RequiredFieldValidator>
    <asp:ValidationSummary ID="vsForm" ShowSummary="true" ShowMessageBox="true" runat="server" />







</asp:Content>
