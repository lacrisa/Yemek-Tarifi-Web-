using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-Q7J5S0G;Initial Catalog=Dbo_yemektarifi;Integrated Security=True;");
            baglan.Open();
            return baglan;
        }
    }
}