using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelPackage.Models
{
    public class WebInquiryForm
    {
        public string SessionID { get; set; }
        public string LeadGuest { get; set; }
        public string ContactNo { get; set; }
        public string Email { get; set; }
        public int NoOfAdult { get; set; }
        public int NoOfChild { get; set; }
        public DateTime JobStart { get; set; }
        public string Message { get; set; }
        public string Status { get; set; }
    }
}