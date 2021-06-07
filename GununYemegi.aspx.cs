using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting;

namespace YemekTarifleri
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select YemekAd, YemekMalzeme, YemekTarif, YemekResim, YemekTarih, YemekPuan From Tbl_Yemekler where Durum=1", bgl.baglanti());
            SqlDataReader oku = cmd.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }
    }
}