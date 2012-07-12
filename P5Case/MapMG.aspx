<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPageMG.master" AutoEventWireup="false" CodeFile="MapMG.aspx.vb" Inherits="MapMG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMGMain" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" 
    DataSourceID="SiteMapDataSourceSportProMG">
</asp:TreeView>
<asp:SiteMapDataSource ID="SiteMapDataSourceSportProMG" runat="server" />
</asp:Content>

