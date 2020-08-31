using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BMI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_calc_Click(object sender, EventArgs e)
        {
            double m, h, bmi;
            m = Convert.ToDouble(mass.Text);
            h = Convert.ToDouble(height.Text);
            if (Measure.SelectedIndex == 0)
            {
                bmi = m / (h * h);
            }
            else
            {
                bmi = 703 * m / (h * h);
            }            
            if (bmi < 18.5)
            {
                result.Text = "Underweight";
            }
            else if(bmi >=18.5 && bmi < 25)
            {
                result.Text = "Normal (Healthy)";
            }
            else if(bmi >= 25 && bmi < 30)
            {
                result.Text = "Overweight";
            }
            else
            {
                result.Text = "Obese";
            }
        }

        protected void btn_clr_Click(object sender, EventArgs e)
        {
            mass.Text = "";
            height.Text = "";
            result.Text = "";
            mass.Focus();
        }

        
    }
}