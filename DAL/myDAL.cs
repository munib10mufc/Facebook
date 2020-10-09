using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;


namespace facebook.DAL
{
    public class myDAL
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

        public int SearchLogin(String user, String pass)
        {

            int Found = 0;

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("login", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@inputusername", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@inputpassword", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@outputresult", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@inputusername"].Value = user;
                cmd.Parameters["@inputpassword"].Value = pass;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@outputresult"].Value); //convert to output parameter to interger format

                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

        public int SearchLogin2(ref int id, String user, String pass, out String f, out String l, out String bdate, out String gen, out String relig, out String currloc, out String hometwn, out String ppic, out String cpic, out String wo, out String edu, out String mob)
        {

            int Found = 0;
            string mail, passw;
            ppic = "";
            cpic = "";
            f = "";
            l = "";
            bdate = "";
            gen = "";
            relig = "";
            currloc = "";
            hometwn = "";
            wo = "";
            edu = "";
            mob = "";
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string que = "Select FirstName, LastName, Email, Pasword, BirthDate, Gender,religion,Hometown,Currentlocation ,userid, profilepicture, coverpicture,workplace,education,mobilenumber from userr where Email='" + user + "';";
                cmd = new SqlCommand(que, con); //name of your procedure

                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        mail = a.GetString(2);
                        passw = a.GetString(3);

                        if (mail.Equals(user) && passw.Equals(pass))
                        {
                            f = a.GetString(0);
                            l = a.GetString(1);
                            bdate = a.GetString(4);
                            gen = a.GetString(5);
                            relig = a.GetString(6);
                            hometwn = a.GetString(7);
                            currloc = a.GetString(8);
                            id = a.GetInt32(9);
                            ppic = a.GetString(10);
                            cpic = a.GetString(11);
                            wo = a.GetString(12);
                            edu = a.GetString(13);
                            mob = a.GetString(14);
                            Found = 1;
                        }
                        else if (mail.Equals(user))
                        {
                            Found = -1;
                        }

                        else
                            Found = 0;
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public int getuseridonemail(String user, String pass)
        {
            int Found = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string que = "Select userid from userr where Email='" + user + "' and pasword='" + pass + "';";
                cmd = new SqlCommand(que, con); //name of your procedure


                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        Found = Convert.ToInt32(a.GetValue(0));
                    }
                }
                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public void MainPageValues(string fname, string lname, string email, string pass, string dob, string gen)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "insert into userr (FirstName,LastName,Email,Pasword,BirthDate,Gender) values ('" + fname + "','" + lname + "','" + email + "','" + pass + "','" + dob + "','" + gen + "');";
                cmd = new SqlCommand(s, con); //name of your procedure
                int x = cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            //HttpContext.Current.Response.Redirect("UploadImagePage.aspx");
        }

        public int storestatus(string data, int userid)
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "insert into userstatus (statusdescription,userid) values ('" + data + "'," + userid + ");";
                cmd = new SqlCommand(s, con); //name of your procedure
                int x = cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return getstatusid(data, userid);
        }

        private int getstatusid(string data, int userid)
        {
            int Found = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string que = "select statusid from userstatus where userid=" + userid + " and statusdescription='" + data + "';";
                cmd = new SqlCommand(que, con); //name of your procedure


                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        Found = Convert.ToInt32(a.GetValue(0));
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public int getstatuscount(int id)
        {
            int x = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "select count(userid) from UserStatus group by userid having userid=" + id;
                cmd = new SqlCommand(s, con); //name of your procedure
                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        x = a.GetInt32(0);
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return x;
        }

        public DataTable getuserdetails(int id)
        {
            DataTable tab = new DataTable();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            try
            {
                string s = "select firstname,lastname,profilepicture from Userr where userid=" + id;
                using (SqlCommand cmd = new SqlCommand(s, con))
                {
                    SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                    adapt.Fill(tab);
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return tab;
        }

        public void getstatuscontent(int statusid, out String desc, out String tim)
        {
            desc = "";
            tim = "";
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "select statusdescription, posttime from UserStatus where statusid=" + statusid;
                cmd = new SqlCommand(s, con); //name of your procedure

                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        desc = a.GetString(0);
                        tim = a.GetValue(1).ToString();
                        //                tim = a.GetString(1);
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

        }

        public void setImageName(string name, int id, char a)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "";
                if (a == 'p')
                    s = "update userr set profilepicture= '" + name + "' where userid=" + id + ";";
                else
                    s = "update userr set coverpicture= '" + name + "' where userid=" + id + ";";

                cmd = new SqlCommand(s, con);
                int x = cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
        }

        public void InsertValuesIntoDb(string w, string e, string c, string h, string m, string r, int id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "update userr set Workplace='" + w + "',education='" + e + "',currentlocation='" + c + "', hometown='" + h + "', mobilenumber='" + m + "',religion='" + r + "' where userid=" + id;
                cmd = new SqlCommand(s, con);
                int x = cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }



        }

        public int CheckValuesInDb(String email)
        {

            int Found = 0;

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchEmail", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@inputemail", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@outputresult", SqlDbType.Int).Direction = ParameterDirection.Output;
                // set parameter values
                cmd.Parameters["@inputemail"].Value = email;
                cmd.ExecuteNonQuery();
                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@outputresult"].Value); //convert to output parameter to interger format
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public int getsearchedperson(String name, ref DataTable data)
        {
            int Found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            DataSet ds = new DataSet();
            SqlCommand cmd;
            try
            {

                string que = "select userid,firstname,lastname,profilepicture from userr where firstname like '%" + name + "%' or LastName like '%" + name + "%';";

                cmd = new SqlCommand(que, con); //name of your procedure
                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                data = ds.Tables[0];

                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        Found = Convert.ToInt32(a.GetValue(0));
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public int checksentrequests(int id, ref DataTable DT)
        {
            int Found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            DataSet ds = new DataSet();
            SqlCommand cmd;
            try
            {

                string que = "select reciever from requestsent where sender=" + id;

                cmd = new SqlCommand(que, con); //name of your procedure
                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                DT = ds.Tables[0];

                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        Found = Convert.ToInt32(a.GetValue(0));
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public int getallfriends(int id, ref DataTable DT)
        {
            int Found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            DataSet ds = new DataSet();
            SqlCommand cmd;
            try
            {

                string que = "select p2 from friends where p1=" + id;

                cmd = new SqlCommand(que, con); //name of your procedure
                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                DT = ds.Tables[0];

                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        Found = Convert.ToInt32(a.GetValue(0));
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public int getallrequests(int id, ref DataTable DT)
        {
            int Found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            DataSet ds = new DataSet();
            SqlCommand cmd;
            try
            {

                string que = "select sender from requestsent where reciever=" + id;

                cmd = new SqlCommand(que, con); //name of your procedure
                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                DT = ds.Tables[0];

               
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public int GetProfilebyId(int id, ref DataTable DT)
        {
            int Found = 1;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            DataSet ds = new DataSet();
            SqlCommand cmd;
            try
            {

                string que = "select sender from friendrequest where reciever=" + id;

                cmd = new SqlCommand(que, con); //name of your procedure
                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                DT = ds.Tables[0];

                using (SqlDataReader a = cmd.ExecuteReader())
                {
                    while (a.Read())
                    {
                        Found = Convert.ToInt32(a.GetValue(0));
                    }
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return Found;
        }

        public void SendRequest(int per1, string per2)
        {
            int a = Convert.ToInt32(per2);
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "insert into requestsent (sender,reciever) values (" + per1 + "," + a + ")";
                cmd = new SqlCommand(s, con);
                int x = cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            AddFriend2(per2, per1);
        }

        public void AddFriends(int per1, string per2)
        {
            int a = Convert.ToInt32(per2);
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "insert into friends (p1,p2) values (" + per1 + "," + a + ")";
                cmd = new SqlCommand(s, con);
                int x = cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
           // AddFriend2(per2, per1);
        }

        private void AddFriend2(string per1,int per2)
        {
            int a = Convert.ToInt32(per1);
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string s = "insert into friends (p1,p2) values (" + per2 + "," + a + ");";
                cmd = new SqlCommand(s, con);
                int x = cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }



        }

        public DataTable getstatuscontent(int statusid)
        {
            DataTable tab = new DataTable();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            try
            {
                string s = "select statusdescription, posttime from UserStatus where userid=" + statusid;
                using (SqlCommand cmd = new SqlCommand(s, con))
                {
                    SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                    adapt.Fill(tab);
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return tab;
        }

    }
}