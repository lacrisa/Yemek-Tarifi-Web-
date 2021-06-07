using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select *From Tbl_Kategoriler Where KategoriId=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tb_kategoriad.Text = dr["KategoriAd"].ToString();
                    tb_kategoriadet.Text = dr["KategoriAdet"].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand upt = new SqlCommand("Update Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where KategoriId=@p3", bgl.baglanti());
            upt.Parameters.AddWithValue("@p1", tb_kategoriad.Text);
            upt.Parameters.AddWithValue("@p2", tb_kategoriadet.Text);
            upt.Parameters.AddWithValue("@p3", Convert.ToInt64(id));
            upt.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Güncellem işlemi başarrlı.');</script>");
        }
    }
}