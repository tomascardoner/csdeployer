using System;
using System.Windows.Forms;

namespace CSDeployer
{
    public partial class formMain : Form
    {
        public formMain()
        {
            InitializeComponent();

            this.Text = String.Format("{0} - v{1}", Application.ProductName, Application.ProductVersion);
            this.Icon = CardonerSistemas.Graphics.GetIconFromBitmap(Properties.Resources.FormIcon);

            ShowStatus(1);
        }

        private void ShowStatus(byte stage)
        {
            pictureboxUpdate.Visible = (stage > 1);
            progressbarStatus.Visible = (stage > 1); ;

            switch (stage)
            {
                case 1:
                    labelApplicationName.Text = "";
                    labelStatus.Text = "Connecting to server to get application update information. Please wait...";
                    break;
                default:
                    break;
            }
        }
    }
}
