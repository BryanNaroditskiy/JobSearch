using JobSearch.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobSearch
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            double salaryFrom;
            double salaryTo;
            DateTime dateApplied;

            //if (!ValidData())
            //{
            //    return;
            //}

            var jobAdDto = new JobAdDto();
            jobAdDto.JobTitle = txtJobTitle.Text;
            jobAdDto.JobAd = txtJobAd.Text;
            jobAdDto.CompanyName = txtCompanyName.Text;
            

            if(ddlLocation.SelectedIndex >= 0)
            {
                jobAdDto.StateId = ddlLocation.SelectedIndex;
            }

            if(ddlJobType.SelectedIndex > -1)
            {
                jobAdDto.JobType = ddlJobType.SelectedIndex; 
            }

            if(ddlExperienceLevel.SelectedIndex > -1)
            {
                jobAdDto.Experience = ddlExperienceLevel.SelectedIndex;
            }

            if(!double.TryParse(txtSalaryInfoFrom.Text, out salaryFrom))
            {
                txtSalaryInfoFrom.Focus();
                return;
            }
            else
            {
                jobAdDto.SalaryFrom = salaryFrom;
            }

            if(!double.TryParse(txtSalaryInfoTo.Text, out salaryTo))
            {
                txtSalaryInfoTo.Focus();
                return;
            }
            else
            {
                jobAdDto.SalaryTo = salaryTo;
            }

            if(!DateTime.TryParse(txtDateApplied.Text, out dateApplied))
            {
                txtDateApplied.Focus();
            }
            else
            {
                jobAdDto.DateApplied = dateApplied;
            }

            if(jobAdDto != null)
            {
                var dba = new DBAccess();
                dba.SaveAdInfo(jobAdDto);
            }
            
            //string stateValue = ddlLocation.SelectedItem.ToString();
        }

        private bool ValidData()
        {
            throw new NotImplementedException();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

        }

    }
}