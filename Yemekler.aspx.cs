using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //yemek listeleme
            Panel2.Visible = false;
            Panel4.Visible = false;
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];
                //kategori listesi
                SqlCommand kl = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = kl.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand del = new SqlCommand("Delete from Tbl_Yemekler where YemekId=@p1", bgl.baglanti());
                del.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
                del.ExecuteNonQuery();
            }
            bgl.baglanti().Close();
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
            //yemek ekleme
            SqlCommand cmd = new SqlCommand("insert into Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriId) values (@p1, @p2, @p3, @p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", tb_yemekad.Text);
            cmd.Parameters.AddWithValue("@p2", tb_yemekmalzeme.Text);
            cmd.Parameters.AddWithValue("@p3", tb_yemektarif.Text);
            cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            //kategori sayısı arttırma
            SqlCommand cmd2 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Yemek eklendi.');</script>");
        }
    }
}