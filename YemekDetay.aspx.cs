using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["YemekId"];
            SqlCommand cmd = new SqlCommand("Select YemekAd From Tbl_Yemekler Where YemekId=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(yemekid)); 
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr["YemekAd"].ToString();
            }
            bgl.baglanti().Close();


            //Yorum listeleme
            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Yorumlar Where YemekId=@p2", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p2", Convert.ToInt64(yemekid));
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad, YorumMail, YorumIcerik, YemekId) values (@p1, @p2, @p3, @p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", tb_adsoyad.Text);
            komut.Parameters.AddWithValue("@p2", tb_mail.Text);
            komut.Parameters.AddWithValue("@p3", tb_yorum.Text);
            komut.Parameters.AddWithValue("@p4", Convert.ToInt64(yemekid));
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Yorumunuz alınmıştır :)');</script>");
        }
    }
}