using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];
        SqlCommand komut = new SqlCommand("select YorumAdSoyad , YorumMail. Yorumİceerik, YemekAd from Yorumlar inner join Yemekler on Yorumlar.Yemekid=Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr .Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();

        }
        bgl.baglanti().Close();

    }
}