using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;



public class SqlSinif
{
    
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-UCAQ5TB\SQLEXPRESS;Initial Catalog=Dbo_yemektarıf;Integrated Security=True;");
            baglan.Open();
            return baglan;
        }
    }