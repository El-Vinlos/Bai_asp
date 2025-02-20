using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadComment();
        }

        protected void Btn_GoiND_Click(object sender, EventArgs e)
        {
            writeFile("data");
        }

        private void writeFile(string fileName)
        {
            string sfile = Server.MapPath(@"\") + fileName + ".txt";

            using (StreamWriter writer = new StreamWriter(sfile, true))
            {
                writer.WriteLine(txtTieuDe.Text);
                writer.WriteLine(txtHoten.Text);
                writer.WriteLine(txtEmail.Text);
                writer.WriteLine(txtNoidung.Text);

                writer.WriteLine("#END");
                writer.Close();
            }

        }

        private void ReadComment()
        {
            string sfile = Server.MapPath(@"\") + "data.txt";
            if (sfile == "")
            {
                writeFile("data");
            }

            using (StreamReader reader = new StreamReader(sfile))
            {
                string snoidung = reader.ReadToEnd();
                string[] delimeter = { "#END" };
                string[] sArr = snoidung.Split(delimeter, StringSplitOptions.RemoveEmptyEntries);

                foreach (string s in sArr)
                {
                    string stemp;
                    stemp = Regex.Replace(s, @"\r\n", @"<br />");
                    string entry = string.Format("<tr><td colspan=\"2\">{0} </td></tr>", stemp);
                    EntryComment.InnerHtml += entry;
                }
            }
        }
    }
}
