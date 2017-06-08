
<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="AJAX_JQueryAccordion.aspx.cs" Inherits="Project.Pages.AJAX_JQueryAccordion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="server">
    <link href="/css/jquery-ui.css" rel="stylesheet" />
    <link href="/css/jquerystyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <!-- Accordion -->
    <h2 class="uiAccordion">JQueryUI Accordion With An ASP Page</h2>
    <div id="accordion">
        <h3>ALICE'S ADVENTURES IN WONDERLAND</h3>
        <div>
           <img src="../Images/Ads/alice.jpg" style="float: right; height:125px; width: 80px;" />
           <p>Project Gutenberg's Alice's Adventures in Wonderland, by Lewis Carroll</p>
           <p>Alice's Adventures in Wonderland is about a girl who follows a rabbit into a secret world 
               called Wonderland. She runs into many trippy creatures such as a cat with a hookah and 
               the animals tell her that she must defeat the evil queen to save wonderland. 
           </p>
           <p>You can read the book at <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.gutenberg.org/files/28885/28885-h/28885-h.htm"
           ForeColor="#ff66cc">https://www.gutenberg.org/files/28885/28885-h/28885-h.htm</asp:HyperLink></p>
        </div>
        <h3>THE ANIMAL STORY BOOK</h3>
        <div>
            <img src="../Images/Ads/lion.jpg" style="float: right; height: 125px; width: 180px;" />
            <p>The Project Gutenberg EBook of The Animal Story Book, by Various</p>
            <p>The book has several different short stories about animals such as "AN ADVENTURE IN THE LIFE OF A BEAR IN PARIS"
                and "SAÏ THE PANTHER". 
            </p>
            <p>You can read the book at <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://www.gutenberg.org/files/38208/38208-h/38208-h.htm"
           ForeColor="#ff66cc">https://www.gutenberg.org/files/38208/38208-h/38208-h.htm</asp:HyperLink></p>
        </div>
        <h3>OZMA OF OZ</h3>
        <div>
            <img src="../Images/Ads/ozmaOfOz.jpg" style="float: right; height: 125px; width: 180px;" />
            <p>The Project Gutenberg EBook of Ozma of Oz, by L. Frank Baum</p>
            <p>This is a childerns book with several different short stories such as "A Yellow Hen" and "The girl in the chicken coop"</p>
            <p>You can read the book at <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://www.gutenberg.org/files/33361/33361-h/33361-h.htm"
           ForeColor="#ff66cc">https://www.gutenberg.org/files/33361/33361-h/33361-h.htm</asp:HyperLink></p>
        </div>
        <h4>Little Wizard Stories of Oz</h4>
        <div>
            <img src="../Images/Ads/storiesOfOz.jpg" style="float: right; height: 125px; width: 180px;" />
            <p>The Project Gutenberg eBook, Little Wizard Stories of Oz, by L. Frank Baum, Illustrated by John R. Neill</p>
            <p>This book has 6 short stories about the little wizard stores of Oz. The short stories are, 
                The Cowardly Lion and the Hungry Tiger, Little Dorothy and Toto, Tiktok and the Nome King, 
                Jack Pumpkinhead and the Sawhorse, and The Scarecrow and the Tin Woodman.
            </p>
            <p>You can read the book at <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://www.gutenberg.org/files/25519/25519-h/25519-h.htm"
           ForeColor="#ff66cc">https://www.gutenberg.org/files/25519/25519-h/25519-h.htm</asp:HyperLink></p>
        </div>
    </div>

        <script src="/js/jquery.js"></script>
        <script src="/js/jquery-ui.js"></script>

        <script>
            $("#accordion").accordion();
            collapsible: true;

            heightStyle: "fill"; "content"

            $("#accordion-resizer").resizable({
                minHeight: 340,
                minWidth: 400,
                resize: function () {
                    $("#accordion").accordion("refresh");
                }
            });
        </script>

</asp:Content>

