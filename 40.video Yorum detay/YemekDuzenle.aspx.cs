using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDuzenle : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];


        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("select * from Yemekler where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();



            if (Page.IsPostBack == false)
            {
                // Kategoriler verisini bağla
                SqlCommand komut2 = new SqlCommand("SELECT * FROM Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                dr2.Close(); // O
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection connection = bgl.baglanti())
            {
                SqlCommand komut = new SqlCommand("UPDATE Yemekler SET YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, kategoriid=@p4 WHERE Yemekid=@p5", connection);
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.Parameters.AddWithValue("@p3", TextBox3.Text);
                komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
                komut.Parameters.AddWithValue("@p5", id);
                komut.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            // Hata mesajını bir loga kaydedebilirsiniz.
            // Loglama kodu buraya eklenebilir.

            // Kullanıcıya hata mesajını gösterme
            Response.Write("<script>alert('Hata oluştu: " + ex.Message + "');</script>");
        }
    }
}

