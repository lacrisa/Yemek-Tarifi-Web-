using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From Tbl_Tarifler where TarifId=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tb_ad.Text = dr["TarifAd"].ToString();
                    tb_malzeme.Text = dr["TarifMalzeme"].ToString();
                    tb_yapilis.Text = dr["TarifYapilis"].ToString();
                    tb_oneren.Text = dr["TarifSahip"].ToString();
                    tb_mail.Text = dr["TarifSahipMail"].ToString();
                }
                bgl.baglanti().Close();
                //kategori listesi
                SqlCommand kl = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = kl.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where TarifId=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand cmd2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriId) values (@p1, @p2, @p3, @p4)", bgl.baglanti());
            cmd2.Parameters.AddWithValue("@p1", tb_ad.Text);
            cmd2.Parameters.AddWithValue("@p2", tb_malzeme.Text);
            cmd2.Parameters.AddWithValue("@p3", tb_yapilis.Text);
            cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}