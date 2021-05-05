/*
 MVCH Final Project (Crystal Reports)
 Members:   Shoaib, Najeebulla, Hussan
 Author:    Shoaib
 Date:      2021-04-09
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace CrystalReportsDemo
{
    public partial class frmPatientPhysicianReportViewer : Form
    {
        public frmPatientPhysicianReportViewer()
        {
            InitializeComponent();
        }

        //Data object declarations 
        //Dataset object 
        private dbMvchDataSet patientPhysicianDataSet;

        //Table Adapter Objectsprivate 
        dbMvchDataSetTableAdapters.bedTblTableAdapter bedTblTableAdapter;
        dbMvchDataSetTableAdapters.admissionTblTableAdapter admissionsTblTableAdapter;
        dbMvchDataSetTableAdapters.patientTblTableAdapter patientTblTableAdapter;
        dbMvchDataSetTableAdapters.physicianTblTableAdapter physicianTblTableAdapter;
        private void PatientPhysicianReportViewer_Load(object sender, EventArgs e)
        {
            //Declare a report object for use at runtime 
            PatientPhysicianReport aPatientPhysicianReport;
            //Intantiate the report

            aPatientPhysicianReport = new PatientPhysicianReport();
            try
            {
                //Instantiate the dataset and table adapters
                patientPhysicianDataSet = new dbMvchDataSet();

                bedTblTableAdapter = new dbMvchDataSetTableAdapters.bedTblTableAdapter();
                admissionsTblTableAdapter = new dbMvchDataSetTableAdapters.admissionTblTableAdapter();
                patientTblTableAdapter = new dbMvchDataSetTableAdapters.patientTblTableAdapter();
                physicianTblTableAdapter = new dbMvchDataSetTableAdapters.physicianTblTableAdapter();

                //Fill the dataset using via the two table adapters 
                //Fill with customers
                bedTblTableAdapter.Fill(patientPhysicianDataSet.bedTbl);
                admissionsTblTableAdapter.Fill(patientPhysicianDataSet.admissionTbl);
                patientTblTableAdapter.Fill(patientPhysicianDataSet.patientTbl);
                physicianTblTableAdapter.Fill(patientPhysicianDataSet.physicianTbl);

                //Assign the filled dataset as the datasource for the report 
                aPatientPhysicianReport.SetDataSource(patientPhysicianDataSet);

                //Set up the report viewer object on the form to  
                //show the runtime report object
                PatientPhysicianReportViewer.ReportSource = aPatientPhysicianReport;
            }
            catch (Exception dataException)
            {
                //Catch any exception thrown during data object instantiation 
                //or report generation and display based on the dataset 
                MessageBox.Show("Data Error Encountered: " + dataException.Message);
            }
        }
    }
}
