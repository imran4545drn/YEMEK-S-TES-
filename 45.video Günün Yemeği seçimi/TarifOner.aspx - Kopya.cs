using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOner : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tarifler(Tarifad, TarifMalzeme, Tarifyapilis, Tarifresim, Tarifsahip, Tarifsahipmail) VALUES (@t1, @t2, @t3, @t4, @t5, @t6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBox1.Text);
            komut.Parameters.AddWithValue("@t2", TextBox2.Text);
            komut.Parameters.AddWithValue("@t3", TextBox3.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", TextBox5.Text);
            komut.Parameters.AddWithValue("@t6", TextBox4.Text);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz alınmıştır.");
        }
       
    }
}