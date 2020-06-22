<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

  <a href="LISServerDetails.aspx" class="list-group-item list-group-item-action">LIS Server</a>
  <a href="YSDetails.aspx" class="list-group-item list-group-item-action">YieldStar</a>
  <a href="testedComp.aspx" class="list-group-item list-group-item-action">Tested compatiblity</a>
        <a href="designComp.aspx" class="list-group-item list-group-item-action">Designed Compatiblity</a>
        <a href="schema.aspx" class="list-group-item list-group-item-action">Shcema</a>

         </center>
</asp:Content>
