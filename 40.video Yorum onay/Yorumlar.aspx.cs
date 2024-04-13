using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yorumlar : Page
{
    private SqlSinif bgl = new SqlSinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadComments();
        }
    }

    private void LoadComments()
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        // Onaylı yorumları getir
        SqlCommand approvedCommentsCommand = new SqlCommand("SELECT * FROM Yorumlar WHERE YorumOnay = 1", bgl.baglanti());
        using (SqlDataReader dr = approvedCommentsCommand.ExecuteReader())
        {
            dataList1.DataSource = dr;
            dataList1.DataBind();
        }

        // Onaysız yorumları getir
        SqlCommand unapprovedCommentsCommand = new SqlCommand("SELECT * FROM Yorumlar WHERE YorumOnay = 0", bgl.baglanti());
        using (SqlDataReader dr2 = unapprovedCommentsCommand.ExecuteReader())
        {
            dataList2.DataSource = dr2;
            dataList2.DataBind();
        }
    }

    protected void btnAddComment_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnRemoveComment_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void btnAddUnapprovedComment_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void btnRemoveUnapprovedComment_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnAddComment_Click1(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
}

