<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="AJAX.aspx.cs" Inherits="Project.Pages.AJAX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="server">
    <link href="/css/jquery-ui.css" rel="stylesheet" />
    <link href="/css/jquerystyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <h2>ASP AJAX animated Page</h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <img alt="love" src="../Images/animated-love.gif" style="width: 60px; height: 150px" /><br />
        <p>You can find the image at <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.animatedimages.org/img-animated-love-image-0027-105116.htm"
           ForeColor="#ff66cc">http://www.animatedimages.org/img-animated-love-image-0027-105116.htm</asp:HyperLink></p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div> <img alt="heart" src="../Images/animated-heart.gif" style="width: 60px; height: 150px" /><br />
        <p>You can find the image at <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://www.animatedimages.org/img-animated-love-image-0077-105166.htm"
           ForeColor="#ff66cc">http://www.animatedimages.org/img-animated-love-image-0077-105166.htm</asp:HyperLink></p></div>
            <div style="background-color:#ffd800;padding: 20px">
                <asp:Label ID="lblTime" runat="server" Font-Bold="true"></asp:Label> <br /><br />
                    <asp:Button ID="cmdRefreshTime" runat="server" Text="Refresh Time" OnClick="cmdRefreshTime_Click" />
                </div>
                <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
