<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" CodeBehind="dbDataSet.aspx.cs" Inherits="Project.Pages.dbDataSet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="server">
    <style>
        /* styles for the gridview pager settings */
        .pagination {
            font-size: 80%;
            color: #FEE7FA;
            background-color: #FEE76E;
        }
        .pagination span {
            white-space: nowrap;
            padding: 0.3em 05em;
            padding: 5px 7px;
            margin-right: 5px;
            margin-bottom: 5px;

            color: #FEE7FA;
            background-color: #FF006E;
            border: 1px solid #FF006E;
        }
        .pagination a {
            padding:0.3em 0.5em;
            margin-right: 5px;
            margin-bottom: 5px;
            white-space: nowrap;
            text-decoration: none;
            color: #FEE7FA;
            background-color: #FF006E;
            border: solid 1px #b11a65;
        }
        .content a:hover {
            color: #FF006E
        }
        .pagination a:hover {
            white-space: nowrap;
            color: #FEE7FA;
            background-color: #b11a65;
            border: 1px solid #FF006E;
        }
        .pagination .current {
            color: #ffd800;
            background-color: #ffd800;
            border: solid 1px #ffd800;
        }
        tr.pagination
        {
            background: none !important;
        }
        tr.pagination tr {
            background: none !important;
        }
        tr.pagination td {
            border: none;
            box-sizing: border-box;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="top">
        <h4>SELECT a Category</h4>
        <br />
        <!-- Configure the DropDownList Control -->
        <br />
        <asp:DropDownList ID="ddlCategory" runat="server" Width="300px" Height="45px"
            OnSelectedIndexChanging = "ddlCategory_SelectedIndexChanged"
            AutoPostBack="true"></asp:DropDownList>
        <br />
    </div>

    <!-- configure to match the form fields -->
    <div class="bottom">
        <asp:Label ID="heading" runat="server" CssClass="heading"
            Text="DataSet and DataAdapter" />
        <br />
        <asp:Label ID="description" runat="server" CssClass="description"
            Text="The purpose of this is to show how to display data from a data set." />
        <div id="Line" class="line">&nbsp;</div><br />

        <asp:Label ID="Label1" runat="server" Font-Size="X-Large"
            ForeColor="#004040" Font-Names="Bookman Old Style" Font-Italic="false">
            Store Product List
        </asp:Label>

        <asp:GridView ID="MyGV" runat="server" Height="211px" Width="650px"
            CellPadding="5" CellSpacing="2" Font-Size="10pt" GridLines="None"
            BorderColor="#ff0066" BorderWidth ="1" BorderStyle="Solid"
            AutoGenerateColumns="false" AllowSorting="true" AllowPaging="true"

            PageSize="4" PagerSettings-PageButtonCount ="3"
            OnSelectedIndexChanging="myGridView_PageIndexChanging" >

            <RowStyle HorizontalAlign="Center" BackColor="#FFFFFF" />
            <HeaderStyle HorizontalAlign="Center" Font-Bold="True"
                ForeColor="White" BackColor="#FF0066" />

            <PagerSettings Mode="NumericFirstLast" Position="Bottom"
                FirstPageText ="First" LastPageText="Last" />
            <PagerStyle CssClass="pagination" ForeColor="White"
                BackColor="#FEE7FA" HorizontalAlign="Center"
                VerticalAlign="Middle" />

            <Columns>
                <asp:BoundField DataField="booktitle"
                    HeaderText="Title" HeaderStyle-Width="150px"
                    ItemStyle-HorizontalAlign="Left"
                    ItemStyle-Width="150px" />

                <asp:BoundField DataField="bookid"
                    HeaderText="ID" HeaderStyle-Width="50px"
                    HeaderStyle-Wrap="false"
                    ItemStyle-Width="50px"
                    ItemStyle-Wrap ="false" /> 

                <asp:BoundField DataField="bookdescription"
                    HeaderText="Description" HeaderStyle-Width="150px"
                    ItemStyle-HorizontalAlign="Left" ItemStyle-Width="150px" />

                <asp:BoundField DataField="catid"
                    HeaderText="Cat ID" HeaderStyle-Width="50px"
                    HeaderStyle-HorizontalAlign="Right"
                    HeaderStyle-Wrap="false"
                    ItemStyle-Width="50px" />

                <asp:BoundField DataField="price"
                    DataFormatString="{0:c}" ConvertEmptyStringToNull="false"
                    HeaderText="Price" HeaderStyle-Width="50px"
                    HeaderStyle-HorizontalAlign ="Right"
                    ItemStyle-HorizontalAlign="Center"
                    ItemStyle-Width="50px" />

                <asp:BoundField DataField="pubdate"
                    DataFormatString="{0:d}" ConvertEmptyStringToNull="false"
                    HeaderText="Pub Date" HeaderStyle-Wrap="false"
                    HeaderStyle-Width="80px"
                    HeaderStyle-HorizontalAlign ="Right"
                    ItemStyle-HorizontalAlign="Center"
                    ItemStyle-Width="50px" />

                <asp:BoundField DataField="picture"
                    HeaderText="Picture" HeaderStyle-Width="50px" />

                <asp:BoundField DataField="authorid"
                    HeaderText="Author" HeaderStyle-Width="25px" />
            </Columns>

            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="true" ForeColor="#333333" />
            <AlternatingRowStyle BackColor="#FDE1F7" ForeColor="#284775" />
            <FooterStyle BackColor="#E00144" Font-Bold="true" ForeColor="White" />
        </asp:GridView>
        <br /><br />
        <asp:Label ID="lblResults" runat="server" Width="580px" Height="45"
            Font-Bold="true"></asp:Label>
    </div>
</asp:Content>
