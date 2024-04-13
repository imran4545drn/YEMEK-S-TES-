using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    private readonly SqlSinif bgl = new SqlSinif();
    private string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        // QueryString'den yemek ID'sini alıyoruz.
        id = Request.QueryString["Yemekid"];

        // Sayfa ilk defa yükleniyorsa yemek detaylarını ve kategorileri yükle.
        if (!IsPostBack)
        {
            LoadYemekDetails();
            LoadKategoriler();
        }
    }

    private void LoadYemekDetails()
    {
        // Yemek detaylarını yüklemek için SQL komutunu kullanıyoruz.
        using (SqlConnection connection = bgl.baglanti())
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Yemekler WHERE Yemekid=@p1", connection);
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                TextBox1.Text = dr["YemekAd"].ToString();
                TextBox2.Text = dr["YemekMalzeme"].ToString();
                TextBox3.Text = dr["YemekTarif"].ToString();
            }

            dr.Close();
        }
    }

    private void LoadKategoriler()
    {
        // Kategorileri yüklemek için SQL komutunu kullanıyoruz.
        using (SqlConnection connection = bgl.baglanti())
        {
            SqlCommand komut2 = new SqlCommand("SELECT * FROM Kategoriler", connection);
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Resmi kaydetmek için FileUpload kontrolünü kullanıyoruz.
        if (FileUpload1.HasFile)
        {
            string filePath = Server.MapPath("/resim/" + FileUpload1.FileName);
            FileUpload1.SaveAs(filePath);
        }

        // Yemek detaylarını güncellemek için SQL komutunu kullanıyoruz.
        try
        {
            using (SqlConnection connection = bgl.baglanti())
            {
                SqlCommand komut = new SqlCommand("UPDATE Yemekler SET YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, Kategoriid=@p4, YemekResim=@p6 WHERE Yemekid=@p5", connection);
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.Parameters.AddWithValue("@p3", TextBox3.Text);
                komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
                komut.Parameters.AddWithValue("@p6", "~/resim/" + FileUpload1.FileName);
                komut.Parameters.AddWithValue("@p5", id);
                komut.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            // Hata durumunda kullanıcıya uyarı ve loglama.
            Response.Write($"<script>alert('Hata oluştu: {ex.Message}');</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Yemeklerin durumunu güncellemek için SQL komutunu kullanıyoruz.
        try
        {
            using (SqlConnection connection = bgl.baglanti())
            {
                // Tüm yemeklerin durumunu sıfırlama
                SqlCommand komut = new SqlCommand("UPDATE Yemekler SET Durum=0", connection);
                komut.ExecuteNonQuery();

                // Belirli bir yemek için durumu 1 olarak ayarlama
                SqlCommand komut2 = new SqlCommand("UPDATE Yemekler SET Durum=1 WHERE Yemekid=@p1", connection);
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            // Hata durumunda kullanıcıya uyarı ve loglama.
            Response.Write($"<script>alert('Hata oluştu: {ex.Message}');</script>");
        }
    }
}
