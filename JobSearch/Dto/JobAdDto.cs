using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobSearch.Dto
{
    public class JobAdDto
    {
        public string JobTitle { get; set; }
        public string JobAd { get; set; }
        public int? StateId{ get; set; }
        public string CompanyName { get; set; }
        public double? SalaryFrom { get; set; }
        public double? SalaryTo { get; set; }
        public DateTime? DateApplied { get; set; }
        public int? JobType { get; set; }
        public int? Experience { get; set; }

        public enum ExperinceLevel
        {
            Junior,
            Intermidiate,
            Senior
        }


    }
}