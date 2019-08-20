namespace CSDeployer
{
    partial class formMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.labelApplicationName = new System.Windows.Forms.Label();
            this.groupboxStatus = new System.Windows.Forms.GroupBox();
            this.labelStatus = new System.Windows.Forms.Label();
            this.progressbarStatus = new System.Windows.Forms.ProgressBar();
            this.pictureboxUpdate = new System.Windows.Forms.PictureBox();
            this.pictureboxLogo = new System.Windows.Forms.PictureBox();
            this.groupboxStatus.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxUpdate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxLogo)).BeginInit();
            this.SuspendLayout();
            // 
            // labelApplicationName
            // 
            this.labelApplicationName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelApplicationName.Location = new System.Drawing.Point(186, 12);
            this.labelApplicationName.Name = "labelApplicationName";
            this.labelApplicationName.Size = new System.Drawing.Size(435, 50);
            this.labelApplicationName.TabIndex = 1;
            this.labelApplicationName.Text = "Application name";
            this.labelApplicationName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // groupboxStatus
            // 
            this.groupboxStatus.Controls.Add(this.progressbarStatus);
            this.groupboxStatus.Controls.Add(this.labelStatus);
            this.groupboxStatus.Location = new System.Drawing.Point(12, 74);
            this.groupboxStatus.Name = "groupboxStatus";
            this.groupboxStatus.Size = new System.Drawing.Size(665, 73);
            this.groupboxStatus.TabIndex = 2;
            this.groupboxStatus.TabStop = false;
            // 
            // labelStatus
            // 
            this.labelStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelStatus.Location = new System.Drawing.Point(6, 16);
            this.labelStatus.Name = "labelStatus";
            this.labelStatus.Size = new System.Drawing.Size(653, 20);
            this.labelStatus.TabIndex = 3;
            this.labelStatus.Text = "Status";
            this.labelStatus.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // progressbarStatus
            // 
            this.progressbarStatus.Location = new System.Drawing.Point(9, 43);
            this.progressbarStatus.Name = "progressbarStatus";
            this.progressbarStatus.Size = new System.Drawing.Size(650, 21);
            this.progressbarStatus.TabIndex = 4;
            // 
            // pictureboxUpdate
            // 
            this.pictureboxUpdate.Image = global::CSDeployer.Properties.Resources.UpdateGif;
            this.pictureboxUpdate.Location = new System.Drawing.Point(627, 12);
            this.pictureboxUpdate.Name = "pictureboxUpdate";
            this.pictureboxUpdate.Size = new System.Drawing.Size(50, 50);
            this.pictureboxUpdate.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureboxUpdate.TabIndex = 3;
            this.pictureboxUpdate.TabStop = false;
            // 
            // pictureboxLogo
            // 
            this.pictureboxLogo.Image = global::CSDeployer.Properties.Resources.CardonerSistemas;
            this.pictureboxLogo.Location = new System.Drawing.Point(12, 12);
            this.pictureboxLogo.Name = "pictureboxLogo";
            this.pictureboxLogo.Size = new System.Drawing.Size(168, 50);
            this.pictureboxLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureboxLogo.TabIndex = 0;
            this.pictureboxLogo.TabStop = false;
            // 
            // formMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Cornsilk;
            this.ClientSize = new System.Drawing.Size(689, 159);
            this.Controls.Add(this.pictureboxUpdate);
            this.Controls.Add(this.groupboxStatus);
            this.Controls.Add(this.labelApplicationName);
            this.Controls.Add(this.pictureboxLogo);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "formMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Application.Title";
            this.groupboxStatus.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxUpdate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureboxLogo)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureboxLogo;
        private System.Windows.Forms.Label labelApplicationName;
        private System.Windows.Forms.GroupBox groupboxStatus;
        private System.Windows.Forms.ProgressBar progressbarStatus;
        private System.Windows.Forms.Label labelStatus;
        private System.Windows.Forms.PictureBox pictureboxUpdate;
    }
}

