<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="dbCategoryUpdate.aspx.cs" Inherits="Project.Pages.dbCategoryUpdate" %>
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
            height: 265px; 
            width: 658px;

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
        <asp:Label ID="Labelheading" runat="server" Width="100px"
            Height="20px">&nbsp;</asp:Label>
        <!-- Configure the DropDownList Control -->
        <br />
        <asp:DropDownList ID="ddlCategory" runat="server" Width="300px" Height="45px"
            OnSelectedIndexChange = "ddlCategory_SelectedIndexChanged"
            AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" ></asp:DropDownList>
        <br />
    </div>

    <!-- Configure the form the match the form fields -->

    <div class="bottom">

        <asp:Label ID="Label1" runat="server" Width="155px">Category ID:</asp:Label>
        <asp:TextBox ID="txtCatID" runat="server" Width="100px" BackColor="#f5f1f1"
            ForeColor="#666666" ReadOnly="true" MaxLength ="15"></asp:TextBox>&nbsp; <br />

        <asp:Label ID="Label2" runat="server" Width="155px">Category Name:</asp:Label>
        <asp:TextBox ID="txtCatTitle" runat="server" Width="250px" BackColor="#ffffff"
            ForeColor="#666666" MaxLength ="45"></asp:TextBox>&nbsp; <br />

        <asp:Label ID="Label3" runat="server" Width="155px">Category Description:</asp:Label>
        <asp:TextBox ID="txtCatDescription" runat="server" Width="400px" BackColor="#ffffff"
            ForeColor="#666666" MaxLength ="45"></asp:TextBox>&nbsp; <br />
        <br /><br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update"
            OnClick="btnUpdate_Click" />
        <br />
        <asp:Label ID="lblResults" runat="server" Text="Label"></asp:Label>
</div>
</asp:Content>
