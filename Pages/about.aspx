<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Project.Pages.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <h2>About John Smith Bookstore</h2>
    <p>The John Smith bookstore contains infomation about 
        old and rare collections of books and resources that were
        created before 1923 or that are in the public domain or available to the public 
        through legal means such as Google Scholar. The experts from the books on 
        this website are therefore also in the public domain. Another good 
        location for books is Project Gutenberg and Google Scholar.
    </p>
    <p>Please Provide the author information when or if you share this information 
        with anyone! We think it is important to credit those who created
        the content! Did you know you can locate the images online?
    </p>
    <p><asp:Label ID="Label1" runat="server"
        Text="Licensing Schemas - Creative Commons"
        CssClass="navbar-default"></asp:Label></p>
    <p>Make sure you check the license requirements and restrictions such as the 
        Creative Commons License.
    </p>
    <p>You can locate web sites with free images at https://en.wikipedia.org/wiki/Wikipedia:Public_domain_image_resources.
        You can also access photos on Flickr.com. You can also access specific Flickr photostreams such as the 
        <asp:HyperLink ID="HyperLink1" NavigateUrl="https://www.flickr.com/photos/britishlibrary"
            runat = "server" Target ="_blank" ForeColor="#FF3399">British Library</asp:HyperLink>
            Of course you can locate other graphics from the Wikimedia 
            Commons page at <a href = "https://commons.wikimedia.org/wiki/Main_page">https://commons.wikipedia.org/wiki/Main_Page</a></p>
    <asp:BulletedList ID="BulletedList1" runat="server">
        <asp:ListItem>Flickr - http://www.flickr.com
        </asp:ListItem>
        <asp:ListItem>Creative Commons: How the Licenses Work - 
            https://creativecommons.org/licenses/ 
        </asp:ListItem>
        <asp:ListItem>Wikipedia Free Images - https://en.wikipedia.org/wiki/
            Wikipedia: Public domain image resources 
        </asp:ListItem>
        <asp:ListItem>Wikipedia Commons - https://commons.wikipedia.org/wiki/Main_Page
        </asp:ListItem>
        <asp:ListItem>British Library - https://www.flickr.com/photos/britishlibrary
        </asp:ListItem>
    </asp:BulletedList>
    <p><br /></p>
    <p><asp:Image ID="Image1" runat="server"
        AlternateText="Flickr Image - State Library of New South Wales"
        ImageUrl ="~/Images/deerpic.png" />
    </p> 
    <p></p>
</asp:Content>
