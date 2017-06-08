<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="dbCategoryInsert.aspx.cs" Inherits="Project.Pages.dbCategoryInsert" %>
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
            height: 272px; 
width: 661px;

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
        <h4>Insert a Category</h4>
        <br />
        <asp:Label ID="Labelheading" runat="server" Width="120px"
             Height="25px">&nbsp;</asp:Label>

        <!-- configure the DropDownList Control -->
        <asp:DropDownList ID="ddlCategory" runat="server" Width="320px"
            Height="25px" AutoPostBack="false" ></asp:DropDownList>
        <br />
    </div>

    <!-- Configure the form -->
    <div class="bottom">

        <asp:Label ID="Label1" runat="server" Width="155px">Category ID:</asp:Label>
        <asp:TextBox ID="txtCatID" runat="server" Width="100px" BackColor="#ffffff"
            ForeColor="#666666" MaxLength="15"></asp:TextBox>&nbsp; <br />

        <asp:Label ID="Label2" runat="server" Width="155px">Category Name:</asp:Label>
        <asp:TextBox ID="txtCatTitle" runat="server" Width="250px" BackColor="#ffffff"
            ForeColor="#666666" MaxLength="45"></asp:TextBox>&nbsp; <br />

        <asp:Label ID="Label3" runat="server" Width="155px">Category Description:</asp:Label>
        <asp:TextBox ID="txtCatDescription" runat="server" Width="400px" BackColor="#ffffff"
            ForeColor="#666666" MaxLength="45"></asp:TextBox>&nbsp; <br /><br /> 
        
        <asp:Button ID="btnInsert" runat="server" Text="Insert"
            OnClick="btnInsert_Click" />
        
        <br /><br />

        <asp:Label ID="lblResults" runat="server" Width="580px" Height="50px"
            Font-Bold="true"></asp:Label>
        <br /><br /><br /><br />
    </div>
</asp:Content>
