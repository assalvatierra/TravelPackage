using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

namespace TravelPackage.Models
{
    public class EmailHandler
    {
        private TravelDBContainer db = new TravelDBContainer();


        public string SendMail(int InqId, string recieverMail)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("mail.realwheelsdavao.com"); //smtp server

                MailDefinition md = new MailDefinition();
                md.From = "Realwheels.Reservation@RealWheelsDavao.com";      //sender mail
                md.IsBodyHtml = true;                          //set true to enable use of html tags 
                md.Subject = "Realbreeze Travel Inquiry";      //mail title

                ListDictionary replacements = new ListDictionary();
                replacements.Add("{name}", "Martin");
                replacements.Add("{unit}", "Honda City");
                replacements.Add("{tour}", "City Tour");
                replacements.Add("{type}", "w/ Driver");
                replacements.Add("{days}", "2");
                replacements.Add("{total}", "5500");

                string body, message;
                //get job details


                //send email in /joborder
                tpInqServices inquiry = db.tpInqServices.Find(InqId);

                md.Subject = inquiry.tpInquiry.LeadGuest + ": Inquiry";   //mail title

                //mail content for client inquiries

                message  = "<div style=';margin-left:25%;margin-right:10%;font-size:18px;text-align:left;'>"+
                 "<b>Inquiry Date</b> : <text>" + inquiry.tpInquiry.dtInquiry.ToString() +" </text><br />"+
                 "<b>Area Package</b> : <text>" + inquiry.tpProduct.tpArea.Name + " - "+ inquiry.tpProduct.Name + "</text><br />"+
                 "<b>Tour Date</b>    : <text>" + inquiry.dtSvcStart.Date.ToShortDateString() + " </text><br />"+
                 "<b>Lead Guest</b>   : <text>" + inquiry.tpInquiry.LeadGuest + " </text><br />"+
                 "<b>Contact No.</b>  : <text>" + inquiry.tpInquiry.ContactNo.ToString() + " </text><br />"+
                 "<b>Guest Email</b>  : <text>" + inquiry.tpInquiry.Email + " </text><br />"+
                 "<b>No of Adult</b>  : <text>" + inquiry.tpInquiry.NoOfAdult.ToString() + " </text><br />"+
                 "<b>No of Child</b>  : <text>" + inquiry.tpInquiry.NoOfChild + " </text><br />"+
                 "<b>Remarks</b>      : <text>" + inquiry.Message + " </text><br /></div />";

                body =
                    " <div style='background-color:#f4f4f4;padding:20px' align='center'>" +
                    " <h1> Realbreeze Travel </h1> " +
                    " <div style='background-color:white;min-width:250px;margin-left:15px;padding:30px;text-align:center;'> <h1>Inquiry Details</h2>" +
                     message +
                    " </div></div>" +
                    "";

                MailMessage msg = md.CreateMailMessage(recieverMail, replacements, body, new System.Web.UI.Control());

                SmtpServer.Port = 587;          //default smtp port
                SmtpServer.Credentials = new System.Net.NetworkCredential("admin@realwheelsdavao.com", "Real123!");
                SmtpServer.EnableSsl = false;   //enable for gmail smtp server
                System.Net.ServicePointManager.Expect100Continue = false;
                SmtpServer.Send(msg);           //send message
                return "success";
            }
            catch (Exception ex)
            {
                return "error: " + ex;
            }
        }


        public string SendMailRedirect(int InqId, string recieverMail)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("mail.realwheelsdavao.com"); //smtp server

                MailDefinition md = new MailDefinition();
                md.From = "Realwheels.Reservation@RealWheelsDavao.com";      //sender mail
                md.IsBodyHtml = true;                          //set true to enable use of html tags 
                md.Subject = "Realbreeze Travel Inquiry";      //mail title

                ListDictionary replacements = new ListDictionary();
                replacements.Add("{name}", "Martin");
                replacements.Add("{unit}", "Honda City");
                replacements.Add("{tour}", "City Tour");
                replacements.Add("{type}", "w/ Driver");
                replacements.Add("{days}", "2");
                replacements.Add("{total}", "5500");

                string body, message;
                //get job details


                //send email in /joborder
                tpInqServices inquiry = db.tpInqServices.Find(InqId);

                md.Subject = " New Inquiry";   //mail title

                //mail content for client inquiries
                message = "<div style=';margin-left:40%;margin-right:10%;font-size:18px;text-align:left;'>" +
                          "<a href='http://realbreezetravel.com/tpInquiries'> Please Follow this link </text><br /></div />";

                body =
                    " <div style='background-color:#f4f4f4;padding:20px' align='center'>" +
                    " <h1> Realbreeze Travel </h1> " +
                    " <div style='background-color:white;min-width:250px;margin-left:15px;padding:30px;text-align:center;'> <h1>Inquiry Details</h2>" +
                     message +
                    " </div></div>" +
                    "";

                MailMessage msg = md.CreateMailMessage(recieverMail, replacements, body, new System.Web.UI.Control());

                SmtpServer.Port = 587;          //default smtp port
                SmtpServer.Credentials = new System.Net.NetworkCredential("admin@realwheelsdavao.com", "Real123!");
                SmtpServer.EnableSsl = false;   //enable for gmail smtp server
                System.Net.ServicePointManager.Expect100Continue = false;
                SmtpServer.Send(msg);           //send message
                return "success";
            }
            catch (Exception ex)
            {
                return "error: " + ex;
            }
        }
    }
}