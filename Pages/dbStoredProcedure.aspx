<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="dbStoredProcedure.aspx.cs" Inherits="Project.Pages.dbStoredProcedure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="server">
    <style>
    .top {
            margin-top: 12px;
            padding: 12px;
            padding-left: 25px;
            height: 250px; width: 650px;

            background-color: #e00144;
            border-color: #000000;
            border-width:thin;
            color: #FFFFFF;
        }
        .top select {
            color: #ff006e;
        }

        .bottom {
            padding-left: 22px;
            height: 210px; 
            width: 652px;

            background-color: #FEE7FA;
            border-color: #000000;
            border-width:thin;
            padding-right: 12px;
            padding-top: 12px;
            padding-bottom: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">

    <div class="top">
        <h4>SELECT a Category</h4>
        <br />
        <!-- Configure the DropDownList Control -->
        <br />
        <asp:DropDownList ID="ddlCategory" runat="server" Width="300px" Height="20px"
            OnSelectedIndexChange = "ddlCategory_SelectedIndexChanged"
            AutoPostBack="true"></asp:DropDownList>
        <br />
    </div>

    <!-- Display the data -->

    <div class="bottom">

        <br /><br />
        <asp:Label ID="lblResults" runat="server" Width="560px" Height="45px"
            font-bold="true"></asp:Label>
        <br /><br /><br />
    </div>
</asp:Content>
