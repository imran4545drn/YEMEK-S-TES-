using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kategoriler : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("SELECT * FROM  Kategoriler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
        oku.Close();
    }
}