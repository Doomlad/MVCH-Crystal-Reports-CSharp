
namespace CrystalReportsDemo
{
    partial class frmPatientPhysicianReportViewer
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
            this.PatientPhysicianReportViewer = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.SuspendLayout();
            // 
            // PatientPhysicianReportViewer
            // 
            this.PatientPhysicianReportViewer.ActiveViewIndex = -1;
            this.PatientPhysicianReportViewer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.PatientPhysicianReportViewer.Cursor = System.Windows.Forms.Cursors.Default;
            this.PatientPhysicianReportViewer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.PatientPhysicianReportViewer.Location = new System.Drawing.Point(0, 0);
            this.PatientPhysicianReportViewer.Name = "PatientPhysicianReportViewer";
            this.PatientPhysicianReportViewer.Size = new System.Drawing.Size(800, 450);
            this.PatientPhysicianReportViewer.TabIndex = 0;
            this.PatientPhysicianReportViewer.Load += new System.EventHandler(this.PatientPhysicianReportViewer_Load);
            // 
            // frmPatientPhysicianReportViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.PatientPhysicianReportViewer);
            this.Name = "frmPatientPhysicianReportViewer";
            this.Text = "PatientPhysicianReport";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer PatientPhysicianReportViewer;
    }
}