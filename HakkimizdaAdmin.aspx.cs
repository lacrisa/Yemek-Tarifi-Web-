﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifleri
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * from Tbl_Hakkimizda", bgl.baglanti());
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr["Metin"].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand upd = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1", bgl.baglanti());
            upd.Parameters.AddWithValue("@p1", TextBox1.Text);
            upd.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}