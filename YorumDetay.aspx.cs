using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select YorumAdSoyad, YorumMail, YorumIcerik, YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId where YorumId=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tb_adsoyad.Text = dr["YorumAdSoyad"].ToString();
                    tb_mail.Text = dr["YorumMail"].ToString();
                    tb_icerik.Text = dr["YorumIcerik"].ToString();
                    tb_yemek.Text = dr["YemekAd"].ToString();
                }
            }
            bgl.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Tbl_Yorumlar set YorumIcerik=@p1, YorumOnay=@p2 where YorumId=@p3", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", tb_icerik.Text);
            cmd.Parameters.AddWithValue("@p2", "True");
            cmd.Parameters.AddWithValue("@p3", Convert.ToInt64(id));
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Yorum onaylandı.');</script>");
        }
    }
}