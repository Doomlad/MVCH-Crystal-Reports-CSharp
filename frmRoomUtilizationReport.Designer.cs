
namespace CrystalReportsDemo
{
    partial class frmRoomUtilizationReportViewer
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
            this.RoomUtilizationReportViewer = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.RoomUtilizationReport1 = new CrystalReportsDemo.RoomUtilizationReport();
            this.RoomUtilizationReport2 = new CrystalReportsDemo.RoomUtilizationReport();
            this.SuspendLayout();
            // 
            // RoomUtilizationReportViewer
            // 
            this.RoomUtilizationReportViewer.ActiveViewIndex = -1;
            this.RoomUtilizationReportViewer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.RoomUtilizationReportViewer.Cursor = System.Windows.Forms.Cursors.Default;
            this.RoomUtilizationReportViewer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.RoomUtilizationReportViewer.Location = new System.Drawing.Point(0, 0);
            this.RoomUtilizationReportViewer.Name = "RoomUtilizationReportViewer";
            this.RoomUtilizationReportViewer.Size = new System.Drawing.Size(800, 450);
            this.RoomUtilizationReportViewer.TabIndex = 0;
            this.RoomUtilizationReportViewer.Load += new System.EventHandler(this.RoomUtilizationReportViewer_Load);
            // 
            // frmRoomUtilizationReportViewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.RoomUtilizationReportViewer);
            this.Name = "frmRoomUtilizationReportViewer";
            this.Text = "RoomUtilizationReport";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer RoomUtilizationReportViewer;
        private RoomUtilizationReport RoomUtilizationReport1;
        private RoomUtilizationReport RoomUtilizationReport2;
    }
}