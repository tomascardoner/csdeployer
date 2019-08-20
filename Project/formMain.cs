using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CSDeployer
{
    public partial class formMain : Form
    {
        public formMain()
        {
            InitializeComponent();

            this.Text = String.Format("{0} - v{1}", Application.ProductName, Application.ProductVersion);
        }
    }
}
