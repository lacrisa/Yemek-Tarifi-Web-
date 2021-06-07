using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand del = new SqlCommand("Delete From Tbl_Kategoriler where KategoriId=@p1", bgl.baglanti());
                del.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
                del.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Write("<script language='javascript'>alert('Silme işlemi başarılı.');</script>");
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
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

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", tb_kategoriad.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Kategori eklenmiştir.');</script>");
        }
    }
}