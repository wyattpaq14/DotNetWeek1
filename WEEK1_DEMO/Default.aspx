<%@ Page Title="" Language="C#" MasterPageFile="~/demo.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WEEK1_DEMO._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHmain" runat="server">


    <asp:Label ID="lblItemCount" runat="server" CssClass="form-control" Text="I am a lable"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="ddlItems" runat="server" CssClass="form-control"></asp:DropDownList>
    <br />
    <asp:Button ID="btnItems" runat="server" CssClass="form-control" Text="Button" />
    <br />
    <asp:CheckBox ID="cbxDisable" OnCheckedChanged="cbxDisable_CheckedChanged" runat="server" CssClass="form-control" Text="Disable"/>

</asp:Content>
