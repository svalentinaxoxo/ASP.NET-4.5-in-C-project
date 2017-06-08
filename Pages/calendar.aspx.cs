using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Pages
{
    public partial class calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
            }
            else
            {
                populateYear();
                formatCalendar();
                resetCalendar();
                // Calendar1.VisibleDate = new DateTime ([year], [month], [day]);
                Calendar1.VisibleDate = new DateTime(2016, 9, 1);
            }
        }
        //reset the calendar
        public void resetCalendar()
        {
            Calendar1.SelectedDates.Clear();
            Label1.Text = "Today is " + Calendar1.TodaysDate.ToShortDateString()
                + "! Click on a date or click on a snowflake.";
            Label2.Text = "";
        }

        public void formatCalendar()
        {
            Calendar1.BackColor = System.Drawing.Color.White;
            Calendar1.DayHeaderStyle.BackColor = System.Drawing.Color.FromArgb(0x79042841);
        }

        public void populateYear()
        {
            ListItemCollection MyList = new ListItemCollection();
            int currYear = System.DateTime.Today.Year;
            for (int y = 0; y < 10; y = y + 1)
            {
                MyList.Add(new ListItem(Convert.ToString(currYear + y), Convert.ToString(y)));
            }
            DropDownList1.DataSource = MyList;
            DropDownList1.DataBind();
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            resetCalendar();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Calendar1.VisibleDate =
                new DateTime(Convert.ToInt32(DropDownList1.SelectedValue),
                Calendar1.TodaysDate.Month, 1);
            resetCalendar();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string results = "";
            if (Calendar1.SelectedDates.Count == 0)
            {
                results = "Pick a date";
            }
            else if ((Calendar1.SelectedDates.Count == 1)
                && (Calendar1.SelectedDate.Date != DateTime.MinValue.Date))
            {
                results = "You selected = " + Calendar1.SelectedDate.ToShortDateString();
            }
            else if (Calendar1.SelectedDates.Count > 0)
            {
                string startdate = ""; string enddate = "";
                int last = Calendar1.SelectedDates.Count - 1;
                for (int i = 0; i <= last; i++)
                {
                    startdate = Calendar1.SelectedDates[0].ToShortDateString();
                    enddate = Calendar1.SelectedDates[last].ToShortDateString();
                }
                results = "You selected = " + Calendar1.SelectedDates.Count +
                    " days. Dates chosen " + startdate + " through " + enddate;
            }
            else
            {
                results = "Please pick a date";
            }
            Label2.Text = results;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            LiteralControl br = new LiteralControl("<br />");
            if (e.Day.Date.Day == 28 && Calendar1.VisibleDate.Month == 4)
            {
                string msg1 = "Mom's Birthday";
                e.Cell.Controls.Add(br);
                e.Cell.Controls.Add(new LiteralControl(msg1));
            }
            if (e.Day.Date.Day == 8 && !e.Day.IsOtherMonth)
            {
                 HyperLink myLink = new HyperLink();
                 myLink.NavigateUrl = "http://www.kansascityzoo.org/";
                 myLink.Text = "<br /> National Zoo Day!";
                 myLink.Target = "_blank";
                 e.Cell.Controls.Add(br);
                 e.Cell.Controls.Add(myLink);
            }
            if (e.Day.Date.Day == 13 && e.Day.Date.Month == 4)
            {
                  Image myImage = new Image();
                  myImage.AlternateText = "LOC Logo";
                  myImage.ImageUrl = "/App_Theme/MyTheme/Images/Logo.jpg";
                  myImage.Height = 16;
                  myImage.Width = 16;
                  e.Cell.Controls.Add(br);
                  e.Cell.Controls.Add(myImage);
             }
             if (e.Day.Date.DayOfWeek == DayOfWeek.Friday)
             {
                  string msg2 = "&clubs; TGIF";
                  e.Cell.Controls.Add(br);
                  e.Cell.Controls.Add(new LiteralControl(msg2));
             }
             if (!e.Day.IsOtherMonth && !e.Day.IsWeekend)
             {
                  e.Cell.ForeColor = System.Drawing.Color.Black;
                  e.Cell.BackColor = System.Drawing.Color.White;
             }
             else if (e.Day.IsOtherMonth)
             {
                  e.Cell.ForeColor = System.Drawing.Color.Black;
                  e.Cell.BackColor = System.Drawing.Color.Purple;
             }
             else if (e.Day.IsWeekend)
             {
                  e.Cell.ForeColor = System.Drawing.Color.Black;
                  e.Cell.BackColor = System.Drawing.Color.White;
             }
             else
             {
                  e.Cell.BackColor = System.Drawing.Color.White;
                  e.Cell.ForeColor = System.Drawing.Color.White;
             }
        }
    }
}
