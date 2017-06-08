<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="AJAX_JQueryAutoComplete.aspx.cs" Inherits="Project.Pages.AJAX_JQueryAutoComplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="server">
    <link href="/css/jquery-ui.css" rel="stylesheet" />
    <link href="/css/jquerystyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">

    <h2>Autocomplete feature using JQuery with ASP</h2>

    <!-- Autocomplete -->
    
    <h2 class="demoHeaders">Search for a book on a programming language:</h2>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Please enter a search term. "></asp:Label>
        <br />
        <br />

        <input runat="server" id="autocomplete"
            title="type &quot;a&quot;" />

        <br />
        <br />

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

        <br />
        <br />

    </div>

    <script src="/js/jquery.js"></script>
    <script src="/js/jquery-ui.js"></script>

    <script>
        var availableTags = [
            "ActionScript",
            "AppleScript",
            "Asp",
            "BASIC",
            "C",
            "C++",
            "Clojure",
            "COBOL",
            "ColdFusion",
            "Erlang",
            "Fortran",
            "Groovy",
            "Haskell",
            "Java",
            "JavaScript",
            "Lisp",
            "Perl",
            "PHP",
            "Python",
            "Ruby",
            "Scala",
            "Scheme"
        ];

        //create the auto complete using script 
        $("#autocomplete").autocomplete({
            source: availableTags
        });
    </script>

</asp:Content>
