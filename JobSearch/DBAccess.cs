using JobSearch.Dto;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

namespace JobSearch
{
    public class DBAccess
    {
        public void SaveAdInfo(JobAdDto jobAdDto)
        {
            try
            {
                using (SqlConnection cn = new SqlConnection())
                {
                    cn.ConnectionString = GetConnectionString();
                    cn.Open();

                    using (SqlCommand cmd = new SqlCommand("uspSaveAdInfo"))
                    {
                        cmd.Connection = cn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@JobTitle", SqlDbType.VarChar).Value = jobAdDto.JobTitle;
                        cmd.Parameters.Add("@JobAd", SqlDbType.VarChar).Value = jobAdDto.JobAd;
                        cmd.Parameters.Add("@JobTypeID", SqlDbType.Int).Value = jobAdDto.JobType;
                        cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = jobAdDto.CompanyName;
                        cmd.Parameters.Add("@StateID", SqlDbType.Int).Value = jobAdDto.StateId;
                        cmd.Parameters.Add("@SalaryFrom", SqlDbType.Money).Value = jobAdDto.SalaryFrom;
                        cmd.Parameters.Add("@SalaryTo", SqlDbType.Money).Value=jobAdDto.SalaryTo;
                        cmd.Parameters.Add("@DateApplied", SqlDbType.Date).Value = jobAdDto.DateApplied;
                        cmd.Parameters.Add("@Experience", SqlDbType.Int).Value = jobAdDto.Experience;

                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

        }

        public string GetConnectionString()
        {
            string conStr = ConfigurationManager.ConnectionStrings["JobSearchConnectionString"].ConnectionString;
            return conStr;
        }
    }
}