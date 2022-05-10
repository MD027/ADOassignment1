using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication7.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Savedata()
        {
            ViewBag.result = "";
            return View();
        }
        [HttpPost]
        public ActionResult SaveData(int matchid, string team1, string team2, string matchstatus, string winningteam, int points)
        {
            String constring = "Data Source=DESKTOP-2NLC227\\SQLEXPRESS; Initial Catalog=Sample; Integrated Security=true";
            SqlConnection sqlcon = new SqlConnection(constring);
            String pname = "addResult";
            sqlcon.Open();
            SqlCommand com = new SqlCommand(pname, sqlcon);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@MatchId", Convert.ToInt32(matchid));
            com.Parameters.AddWithValue("@TeamName1", team1);
            com.Parameters.AddWithValue("@TeamNmae2", team2);
            com.Parameters.AddWithValue("@MatchStatus", matchstatus);
            com.Parameters.AddWithValue("@WinningTeam", winningteam);
            com.Parameters.AddWithValue("@points", points);
            com.ExecuteNonQuery();
            sqlcon.Close();
            ViewBag.result = "Record Has Been Saved Successfully";
            return View();

        }
    }
}