using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string si1, si2, sm1, sm2, ss, sd;
        Label1.Text += "<br />";
        if (Session["insid"] != null)
        {
            si1 = Session["insid"].ToString();
            Label1.Text += "Insert ID : " + si1 + "<br />";
        }
        else
        {
            Label1.Text += "Insert ID : NULL <br />";
        }

        if (Session["insct"] != null) {
            si2 = Session["insct"].ToString();
            Label1.Text += "Insert Price : " + si2 + "<br />";
        }
        else
        {
            Label1.Text += "Insert Price : NULL <br />";
        }

        if (Session["mfid"] != null) {
            sm1 = Session["mfid"].ToString();
            Label1.Text += "Modify ID : " + sm1 + "<br />";
        }
        else
        {
            Label1.Text += "Modify ID : NULL <br />";
        }

        if (Session["mfct"] != null) {
            sm2 = Session["mfct"].ToString();
            Label1.Text += "Modify Price : " + sm2 + "<br />";
        }
        else
        {
            Label1.Text += "Modify Price : NULL <br />";
        }

        if (Session["seid"] != null) {
            ss = Session["seid"].ToString();
            Label1.Text += "Search ID : " + ss + "<br />";
        }
        else
        {
            Label1.Text += "Search ID : NULL <br />";
        }

        if (Session["deid"] != null) {
            sd = Session["deid"].ToString();
            Label1.Text += "Delete ID : " + sd + "<br />";
        }
        else
        {
            Label1.Text += "Delete ID : NULL <br />";
        }

    }
}