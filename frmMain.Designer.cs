﻿
namespace CrystalReportsDemo
{
    partial class frmMain
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
            this.label1 = new System.Windows.Forms.Label();
            this.btnRoomUtilReport = new System.Windows.Forms.Button();
            this.btnPatientPhysician = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Neo Sans", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ControlDarkDark;
            this.label1.Location = new System.Drawing.Point(50, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(221, 26);
            this.label1.TabIndex = 0;
            this.label1.Text = "Crystal Reports Viewer";
            // 
            // btnRoomUtilReport
            // 
            this.btnRoomUtilReport.Location = new System.Drawing.Point(47, 65);
            this.btnRoomUtilReport.MaximumSize = new System.Drawing.Size(224, 34);
            this.btnRoomUtilReport.MinimumSize = new System.Drawing.Size(224, 34);
            this.btnRoomUtilReport.Name = "btnRoomUtilReport";
            this.btnRoomUtilReport.Size = new System.Drawing.Size(224, 34);
            this.btnRoomUtilReport.TabIndex = 1;
            this.btnRoomUtilReport.Text = "View Room Utilization Report";
            this.btnRoomUtilReport.UseVisualStyleBackColor = true;
            this.btnRoomUtilReport.Click += new System.EventHandler(this.btnRoomUtilReport_Click);
            // 
            // btnPatientPhysician
            // 
            this.btnPatientPhysician.Location = new System.Drawing.Point(47, 105);
            this.btnPatientPhysician.Name = "btnPatientPhysician";
            this.btnPatientPhysician.Size = new System.Drawing.Size(224, 34);
            this.btnPatientPhysician.TabIndex = 2;
            this.btnPatientPhysician.Text = "View Patient-Physician Report";
            this.btnPatientPhysician.UseVisualStyleBackColor = true;
            this.btnPatientPhysician.Click += new System.EventHandler(this.btnPatientPhysician_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(47, 145);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(224, 34);
            this.btnExit.TabIndex = 3;
            this.btnExit.Text = "Exit Program";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(317, 201);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnPatientPhysician);
            this.Controls.Add(this.btnRoomUtilReport);
            this.Controls.Add(this.label1);
            this.Name = "frmMain";
            this.Text = "Crystal Reports Viewer";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnRoomUtilReport;
        private System.Windows.Forms.Button btnPatientPhysician;
        private System.Windows.Forms.Button btnExit;
    }
}