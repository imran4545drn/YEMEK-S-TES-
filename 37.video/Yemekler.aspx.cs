using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();

    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel4.Visible = false;
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

        // Yemekler verisini bağla
        SqlCommand komut = new SqlCommand("SELECT * FROM Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        dr.Close(); // Okuyucuyu kapat


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection connection = bgl.baglanti())
            {
                SqlCommand komut3 = new SqlCommand("INSERT INTO Yemekler (YemekAd, YemekMalzeme, YemekTarif, kategoriid) VALUES (@p1, @p2, @p3, @p4)", connection);
                komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
                komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
                komut3.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            // Hata mesajını bir loga kaydedebilirsiniz.
            // Loglama kodu buraya eklenebilir.

            // Kullanıcıya hata mesajını gösterme
            Response.Write("<script>alert('Yemek ekleme sırasında hata oluştu: " + ex.Message + "');</script>");
        }
        finally
        {
            // Bağlantıyı her durumda kapat
            bgl.baglanti().Close();
        }

        try
        {
            using (SqlConnection connection = bgl.baglanti())
            {
                SqlCommand komut = new SqlCommand("UPDATE Kategoriler SET KategoriAdet=KategoriAdet+1 WHERE Kategoriid=@p1", connection);
                komut.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
                komut.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            // Hata mesajını bir loga kaydedebilirsiniz.
            // Loglama kodu buraya eklenebilir.

            // Kullanıcıya hata mesajını gösterme
            Response.Write("<script>alert('Kategori güncelleme sırasında hata oluştu: " + ex.Message + "');</script>");
        }
        finally
        {
            // Bağlantıyı her durumda kapat
            bgl.baglanti().Close();
        }
    }
}