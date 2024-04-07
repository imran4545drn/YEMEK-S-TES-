using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GununYemegi : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("SELECT * FROM  GununYemegi", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();
        oku.Close();
    }
}