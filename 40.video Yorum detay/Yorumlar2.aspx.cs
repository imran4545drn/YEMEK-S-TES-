using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar2 : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        // Başlangıçta panelleri gizle
        Panel4.Visible = false;
        Panel2.Visible = false;

        // Onaylanmış yorumları getir
        LoadYorumlar(1, DataList1);

        // Onay bekleyen yorumları getir
        LoadYorumlar(0, DataList2);
    }

    private void LoadYorumlar(int yorumOnay, DataList dataList)
    {
        string query = "SELECT * FROM Yorumlar WHERE YorumOnay = @yorumOnay";
        using (SqlCommand komut = new SqlCommand(query, bgl.baglanti()))
        {
            komut.Parameters.AddWithValue("@yorumOnay", yorumOnay);
            SqlDataReader dr = komut.ExecuteReader();
            dataList.DataSource = dr;
            dataList.DataBind();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click1(object sender, EventArgs e)
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
}
