using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar (MesajBaslik, MesajMail, MesajIcerik, MesajGonderen) values (@p1, @p2, @p3, @p4)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", tb_konu.Text);
            cmd.Parameters.AddWithValue("@p2", tb_mail.Text);
            cmd.Parameters.AddWithValue("@p3", tb_mesaj.Text);
            cmd.Parameters.AddWithValue("@p4", tb_adsoyad.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Mesajını alınmıştır :)');</script>");
        }
    }
}