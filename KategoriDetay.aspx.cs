using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriId"];
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler Where KategoriId=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", Convert.ToInt64(kategoriid));
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}