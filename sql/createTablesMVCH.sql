/*
    DBAS - MVCH Table Creation Scripts
*/

/* Patients Table */
DROP TABLE IF EXISTS patientTbl;
CREATE TABLE patientTbl (
    patientNO               CHAR(5)         PRIMARY KEY,
    patientFirstName        VARCHAR(20),        
    patientLastName         VARCHAR(20),
    patientAddress          VARCHAR(100),
    patientCity             VARCHAR(80),
    patientProvince         VARCHAR(40),
    patientPostalCode       VARCHAR(7),
    patientTelephone        VARCHAR(15),
    patientSex              CHAR(1),
    patientHCN              VARCHAR(10),
    patientExtension        VARCHAR(4),
    patientFinancialStatus  VARCHAR(10)
);

/* Physicians Table */
DROP TABLE IF EXISTS physicianTbl;
CREATE TABLE physicianTbl (
    physicianNO             CHAR(5)         PRIMARY KEY,
    physicianFirstName      VARCHAR(20)     NOT NULL,
    physicianLastName       VARCHAR(20)     NOT NULL,
    physicianTelephone      VARCHAR(15)     NOT NULL,
    physicialSpecialty      VARCHAR(20)     NOT NULL
);

/* Cost Center Table */
DROP TABLE IF EXISTS costCenterTbl;
CREATE TABLE costCenterTbl (
    costCenter              CHAR(5)         PRIMARY KEY,
    costCenterName          VARCHAR(20)     NOT NULL
);

/* Rooms Table */
DROP TABLE IF EXISTS roomsTbl;
CREATE TABLE roomsTbl (
    roomLocation            CHAR(5)     PRIMARY KEY,
    roomName                VARCHAR(30)     NOT NULL,
    roomType                VARCHAR(10)     NOT NULL,
    costCenter              CHAR(5),
    FOREIGN KEY (costCenter) REFERENCES costCenterTbl(costCenter)
);
 
/* Bed Table */
DROP TABLE IF EXISTS bedTbl;
CREATE TABLE bedTbl (
    bedID                   CHAR(5)         PRIMARY KEY,
    roomLocation            CHAR(5)         NOT NULL,
    FOREIGN KEY (roomLocation) REFERENCES roomsTbl(roomLocation)
);

/* Admissions Table */
DROP TABLE IF EXISTS admissionTbl;
CREATE TABLE admissionTbl (
    admissionID             CHAR(5)         PRIMARY KEY,
    dateAdmitted            DATE,
    dischargeDate           DATE,
    bedID                   CHAR(5),
    patientNO               CHAR(5),
    physicianNO             CHAR(5),
    FOREIGN KEY (bedID) REFERENCES bedTbl(bedID),
    FOREIGN KEY (patientNO) REFERENCES patientTbl(patientNO),
    FOREIGN KEY (physicianNO) REFERENCES physicianTbl(physicianNO)
);

/* Items Table */
DROP TABLE IF EXISTS itemsTbl;
CREATE TABLE itemsTbl (
    itemCode                CHAR(5)         PRIMARY KEY,
    itemDesc                VARCHAR(100)    NOT NULL,
    itemCharge              DECIMAL         NOT NULL,
    costCenter              CHAR(5)         NOT NULL,
    FOREIGN KEY (costCenter) REFERENCES costCenterTbl(costCenter) 
);

/* Invoice Table */
DROP TABLE IF EXISTS invoiceTbl;
CREATE TABLE invoiceTbl (
    invoiceID               CHAR(5)         PRIMARY KEY,
    admissionID             CHAR(5),
    itemCode                CHAR(5),
    FOREIGN KEY (itemCode) REFERENCES itemsTbl(itemCode),
    FOREIGN KEY (admissionID) REFERENCES admissionTbl(admissionID)
);

/* Line Items Table */
DROP TABLE IF EXISTS lineItemsTbl;
CREATE TABLE lineItemsTbl (
    lineItemID              CHAR(5)         PRIMARY KEY,
    admissionID             CHAR(5)         NOT NULL,
    itemCode                CHAR(5)         NOT NULL,
    dateCharged             DATE            NOT NULL,
    chargeAmount            DECIMAL         NOT NULL,
    FOREIGN KEY (admissionID) REFERENCES admissionTbl(admissionID),
    FOREIGN KEY (itemCode) REFERENCES itemsTbl(itemCode)
 
);

/* Medical Procedures Table */
DROP TABLE IF EXISTS medicalProceduresTbl;
CREATE TABLE medicalProceduresTbl (
    medProcedureID          CHAR(5)         PRIMARY KEY,
    lineItemID              CHAR(5),
    procedureDesc           VARCHAR(250),
    physicianNO             CHAR(5),
    FOREIGN KEY (lineItemID) REFERENCES lineItemsTbl(lineItemID),
    FOREIGN KEY (physicianNO) REFERENCES physicianTbl(physicianNO)
);