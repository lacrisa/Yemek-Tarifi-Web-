using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Tarifler (TarifAd, TarifMalzeme, TarifYapilis, TarifResim, TarifSahip, TarifSahipMail) values (@t1, @t2, @t3, @t4, @t5, @t6)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@t1", tb_tarifAd.Text);
            cmd.Parameters.AddWithValue("@t2", tb_malzemeler.Text);
            cmd.Parameters.AddWithValue("@t3", tb_hazirlanis.Text);
            cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@t5", tb_tarifOneren.Text);
            cmd.Parameters.AddWithValue("@t6", tb_mailAdres.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Tarifiniz alınmıştır :)');</script>");
        }
    }
}