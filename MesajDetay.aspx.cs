using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Mesajlar where MesajId=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                tb_mesajgonderen.Text = dr["MesajGonderen"].ToString();
                tb_baslik.Text = dr["MesajBaslik"].ToString();
                tb_mail.Text = dr["MesajMail"].ToString();
                tb_icerik.Text = dr["MesajIcerik"].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}