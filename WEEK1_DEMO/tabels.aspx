<%@ Page Title="" Language="C#" MasterPageFile="~/demo.Master" AutoEventWireup="true" CodeBehind="tabels.aspx.cs" Inherits="WEEK1_DEMO.tabels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHmain" runat="server">

    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-12">
                <div class="table-responsive">
                    <asp:GridView ID="gvTabels" runat="server" AutoGenerateColumns="false" DataSourceID="sdsTabels" CssClass="table" AllowSorting="true" AllowPaging="true" PageSize="2">

                        <Columns>

                            <asp:BoundField HeaderText="Section" DataField="sect_id" SortExpression="sect_id" />
                            <asp:BoundField HeaderText="Teble Name" DataField="tbl_name" SortExpression="tbl_name" />
                            <asp:BoundField HeaderText="Seat Count" DataField="tbl_seat_cnt" SortExpression="tbl_seat_cnt" />
                            <asp:BoundField HeaderText="Active ?" DataField="tbl_active" SortExpression="tbl_active" />
                            <asp:HyperLinkField Text="view/edit" DataNavigateUrlFields="tbl_id" DataNavigateUrlFormatString="~/tabels/tabele/{0}" />
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" Position="Bottom" PageButtonCount="2" />


                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="sdsTabels" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_Paquin %>" SelectCommand="tables_getalll" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </div>

    </div>



</asp:Content>
