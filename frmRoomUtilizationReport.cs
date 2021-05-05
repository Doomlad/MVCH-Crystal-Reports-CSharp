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
    public partial class frmRoomUtilizationReportViewer : Form
    {
        public frmRoomUtilizationReportViewer()
        {
            InitializeComponent();
        }

        //Data object declarations 
        //Dataset object 
        private dbMvchDataSet roomUtilizationDataSet;

        //Table Adapter Objectsprivate 
        dbMvchDataSetTableAdapters.bedTblTableAdapter bedTblTableAdapter;
        dbMvchDataSetTableAdapters.admissionTblTableAdapter admissionsTblTableAdapter;
        dbMvchDataSetTableAdapters.patientTblTableAdapter patientTblTableAdapter;
        dbMvchDataSetTableAdapters.roomsTblTableAdapter roomsTblTableAdapter;
        private void RoomUtilizationReportViewer_Load(object sender, EventArgs e)
        {
            //Declare a report object for use at runtime 
            RoomUtilizationReport aRoomUtilizationReport;
            //Intantiate the report

            aRoomUtilizationReport = new RoomUtilizationReport();
            try
            {
                //Instantiate the dataset and table adapters
                roomUtilizationDataSet = new dbMvchDataSet();

                bedTblTableAdapter = new dbMvchDataSetTableAdapters.bedTblTableAdapter();
                admissionsTblTableAdapter = new dbMvchDataSetTableAdapters.admissionTblTableAdapter();
                patientTblTableAdapter = new dbMvchDataSetTableAdapters.patientTblTableAdapter();
                roomsTblTableAdapter = new dbMvchDataSetTableAdapters.roomsTblTableAdapter();

                //Fill the dataset using via the two table adapters 
                //Fill with customers
                bedTblTableAdapter.Fill(roomUtilizationDataSet.bedTbl);
                admissionsTblTableAdapter.Fill(roomUtilizationDataSet.admissionTbl);
                patientTblTableAdapter.Fill(roomUtilizationDataSet.patientTbl);
                roomsTblTableAdapter.Fill(roomUtilizationDataSet.roomsTbl);

                //Assign the filled dataset as the datasource for the report 
                aRoomUtilizationReport.SetDataSource(roomUtilizationDataSet);

                //Set up the report viewer object on the form to  
                //show the runtime report object
                RoomUtilizationReportViewer.ReportSource = aRoomUtilizationReport;
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
