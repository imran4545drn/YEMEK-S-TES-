using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["mesajid"];
        SqlCommand komut = new SqlCommand("select * from Mesajlar where mesajid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox1.Text = dr[2].ToString();
            TextBox1.Text = dr[3].ToString();
            TextBox1.Text = dr[4].ToString();
        }
        bgl.baglanti().Close();
    }
}