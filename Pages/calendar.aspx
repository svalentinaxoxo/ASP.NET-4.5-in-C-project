<%@ Page Title="" Language="C#" MasterPageFile="~/Homework.Master" AutoEventWireup="true" 
    CodeBehind="calendar.aspx.cs" Inherits="Project.Pages.calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
        <br />
        <div id="pageheader">
            <h2>Calendar of Events</h2>
            <p id="message" runat="server">
                Please complete the form to register for the conference.
            </p>
            <p runat="server">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </p>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label> <br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
        </div>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" 
            CellPadding="4" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="Black" Height="400px" SelectionMode="DayWeek" Width="700px" 
            FirstDayOfWeek="Sunday" NextPrevFormat="ShortMonth" SelectWeekText="&#x2744"
            OnSelectionChanged="Calendar1_SelectionChanged"
            OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" OnDayRender="Calendar1_DayRender">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>

        <br />
        <br />
        <asp:Calendar ID="Calendar2" runat="server"
            SkinID = "Red">
        </asp:Calendar>
        <br />
        <br />
        <br />
        <br />
</asp:Content>
