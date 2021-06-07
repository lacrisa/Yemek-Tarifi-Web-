using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select *From Tbl_Yemekler Where YemekId=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    tb_yemekad.Text = dr["YemekAd"].ToString();
                    tb_yemekmalzeme.Text = dr["YemekMalzeme"].ToString();
                    tb_yemektarif.Text = dr["YemekTarif"].ToString();
                }
            }
            bgl.baglanti().Close();
            if (Page.IsPostBack == false)
            {
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
            FileUpload1.SaveAs(Server.MapPath("/resimler/"+FileUpload1.FileName));

            SqlCommand upt = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriId=@p4, YemekResim=@p5 where YemekId=@p6", bgl.baglanti());
            upt.Parameters.AddWithValue("@p1", tb_yemekad.Text);
            upt.Parameters.AddWithValue("@p2", tb_yemekmalzeme.Text);
            upt.Parameters.AddWithValue("@p3", tb_yemektarif.Text);
            upt.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            upt.Parameters.AddWithValue("@p5", "~/resimler/"+FileUpload1.FileName);
            upt.Parameters.AddWithValue("@p6", Convert.ToInt64(id));
            upt.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("<script language='javascript'>alert('Güncellem işlemi başarılı.');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumu false yapıldı
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            //Günün yemeği seçme
            SqlCommand komut2 = new SqlCommand("Update Tbl_Yemekler set Durum=1 where YemekId=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", Convert.ToInt64(id));
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}