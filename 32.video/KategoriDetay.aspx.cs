﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class KategoriDetay : System.Web.UI.Page
{
    SqlSinif snf = new SqlSinif();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid = Request.QueryString["kategoriid"];
        SqlCommand komut = new SqlCommand("Select  * From Yemekler where kategoriid=@p1", snf.baglanti());
        komut.Parameters.AddWithValue("@p1", kategoriid);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
        
    }
}