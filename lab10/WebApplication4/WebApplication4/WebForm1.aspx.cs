using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> array = new List<string>();
            array.Add("Анастасия");
            array.Add("Владимировна");
            array.Add("просто");
            array.Add("лучшая");
            var client = new ServiceReference1.Service1Client("BasicHttpBinding_IService1");
            foreach (string s in array)
                listBox.Items.Add(s);
            client.Close();
        }
    }
}