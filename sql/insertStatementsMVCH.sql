/* Mock Data for Patients Table  (20 Patients) */
INSERT INTO patientTbl
VALUES 
('PA101','Franklyn','Raccio','71264 Magdeline Way','Oshawa','Ontario','B4V 4L1','390-233-2163','M','9921963155','296','self'),
('PA102','Kimball','Whiteman','00953 Nevada Park','Oshawa','Ontario','G7A 1P6','961-293-9978','M','5185024549','743','esi'),
('PA103','Mariette','Surman','1 Homewood Terrace','Witby','Ontario','L1G 5P5','285-254-4356','F','1835641064','615','esi'),
('PA104','Theodore','Nare','04 Erie Hill','Oshawa','Ontario','L1G 3Y1','718-451-8704','M','4852392756','123','esi'),
('PA105','Burgess','Alldridge','0 Bonner Center','Oshawa','Ontario','L1G 2K6','951-110-6715','M','2548388499','543','self'),
('PA106','Dottie','Guerrero','3217 rue Ontario Ouest','Witby','Ontario','H2X 1Y8','514-848-6511','M','5492601804','000','self'),
('PA107','Alison','Small','3640 A Avenue','Oshawa','Ontario','T5J 0K7','780-412-3874','F','5185324549','753','esi'),
('PA108','Akeem','Berry','1359  Yonge Street','Witby','Ontario','M4W 1J7','416-513-5258','F','1112541064','523','esi'),
('PA109','Johnathan','Franks','3303  Churchill Plaza','Witby','Ontario','P6A 1Z2','718-451-8354','M','5325536263','463','esi'),
('PA110','Evander','Tipton','4539  Robson St','Oshawa','Ontario','V6B 3K9','951-352-6355','F','1255328499','532','self'),
('PA111','Zayla','Castillo','2463 Lynden Road','Witby','Ontario','L0K 1N0','190-253-5363','M','5326363155','123','self'),
('PA112','Zachery','Coulter','2940 Eglinton Avenue','Witby','Ontario','M4P 1A6','963-293-9352','M','5186437549','235','esi'),
('PA113','Akeem','Feliciano','1150 th Ave','Witby','Ontario','T1J 2J7','125-532-2152','F','1835643544','214','esi'),
('PA114','Martez','Bynum','3986 Sheppard Ave','Oshawa','Ontario','M1S 1T4','522-451-5321','M','5322392756','543','esi'),
('PA115','Rylee','Dick','2286 Roger Street','Witby','Ontario','V9P 1R1','523-642-8653','F','2643756399','754','self'),
('PA116','Mordechai','Burrell','4185 Bay Street','Witby','Ontario','M5J 2R8','734-522-2163','F','1532235253','325','self'),
('PA117','Brecken','Chin','2694 Scotts Lane','Witby','Ontario','V5C 1J9','642-293-6432','M','1355564342','765','esi'),
('PA118','Navya','Mcneil','4772 rue Saint-Édouard','Witby','Ontario','T8A 1V6','285-463-6243','F','1865448844','564','esi'),
('PA119','Tess','Cohen','488 Wyecroft Road','Oshawa','Ontario','M4K 1A6','126-543-7342','M','5326342750','876','esi'),
('PA120','Darion','Chaney','846 James Street','Witby','Ontario','M9V 2X5','643-755-6795','M','7108532953','214','self');

/* Mock Data for Physician Table (12 Physicians) */
INSERT INTO physicianTbl
VALUES
('PH101', 'Darren', 'Puffer', '999-888-6663', 'Paediatrics'), 
('PH102', 'Najeeb', 'Syed', '999-555-7777', 'Critical Care'), 
('PH103', 'Stephen', 'Forbes', '888-555-2221', 'Paediatrics'), 
('PH104', 'Muath', 'Khan', '666-444-2523', 'Radiology'),
('PH105', 'Naruto', 'Luffy', '258-888-7865', 'Heart Surgeon'),
('PH106', 'Malcolm','Blanchard', '705-563-8587', 'Paediatrics'), 
('PH107', 'Devon','Reed', '306-664-8848', 'Critical Care'), 
('PH108', 'Jayven','Sheehan', '604-408-1207', 'Paediatrics'), 
('PH109', 'Brice','Rouse', '403-541-8705', 'Radiology'),
('PH110', 'Truman','Valencia', '250-858-1727', 'Paediatrics'),
('PH111', 'Ruben','Adkins', '780-702-3902', 'Paediatrics'),
('PH112', 'Salem','Crowley', '514-814-0828', 'Heart Surgeon'); 

/* Mock Data for Cost Center Table (3 Cost Centers) */
INSERT INTO costCenterTbl
VALUES
('CC100', 'Room & Board'),
('CC200', 'Laboratory'),
('CC300', 'Radiology'); 

/* Mock Data for Room Table (5 Different Room Types) */
INSERT INTO roomsTbl
VALUES
('R100A', 'Semi-Private', 'SP', 'CC100'),
('R100B', 'Private', 'PR', 'CC100'),
('R100C', 'Intensive Care', 'IC', 'CC200'),
('R100D', 'Ward, 3 Beds', 'W3', 'CC300'),
('R100E', 'Ward, 4 Beds', 'W4', 'CC200'); 

/* Mock Data for Bed Table (20 Beds for 20 Patients) */
INSERT INTO bedTbl
VALUES
('B1001' , 'R100A'), 
('B1002' , 'R100B'), 
('B1003' , 'R100C'), 
('B1004' , 'R100D'), 
('B1005', 'R100E'),
('B1006' , 'R100A'), 
('B1007' , 'R100B'), 
('B1008' , 'R100C'), 
('B1009' , 'R100D'), 
('B1010', 'R100E'),
('B1011' , 'R100A'), 
('B1012' , 'R100B'), 
('B1013' , 'R100C'), 
('B1014' , 'R100D'), 
('B1015', 'R100E'),
('B1016' , 'R100A'), 
('B1017' , 'R100B'), 
('B1018' , 'R100C'), 
('B1019' , 'R100D'), 
('B1020', 'R100E');

/* Mock Data for Admission Table (20 admissions for 20 patients) */
INSERT INTO admissionTbl 
VALUES 
('A1001', '11/15/2019', '12/01/2019', 'B1001', 'PA101', 'PH101'), 
('A1002', '10/15/2019', '11/01/2019', 'B1002', 'PA102', 'PH102'),
('A1003', '11/15/2020', '12/01/2020', 'B1003', 'PA103', 'PH103'), 
('A1004', '12/15/2019', '12/16/2019', 'B1004', 'PA104', 'PH104'),
('A1005', '11/15/2019', '11/18/2019', 'B1005', 'PA105', 'PH105'),
('A1006', '11/15/2019', '12/01/2019', 'B1006', 'PA106', 'PH106'), 
('A1007', '10/15/2019', '11/01/2019', 'B1007', 'PA107', 'PH107'),
('A1008', '11/15/2020', '12/01/2020', 'B1008', 'PA108', 'PH108'), 
('A1009', '12/15/2019', '12/16/2019', 'B1009', 'PA109', 'PH109'),
('A1010', '11/15/2019', '11/18/2019', 'B1010', 'PA110', 'PH110'),
('A1011', '11/15/2019', '12/01/2019', 'B1011', 'PA111', 'PH111'), 
('A1012', '10/15/2019', '11/01/2019', 'B1012', 'PA112', 'PH112'),
('A1013', '11/15/2020', '12/01/2020', 'B1013', 'PA113', 'PH101'), 
('A1014', '12/15/2019', '12/16/2019', 'B1014', 'PA114', 'PH102'),
('A1015', '11/15/2019', '11/18/2019', 'B1015', 'PA115', 'PH103'),
('A1016', '11/15/2019', '12/01/2019', 'B1016', 'PA116', 'PH104'), 
('A1017', '10/15/2019', '11/01/2019', 'B1017', 'PA117', 'PH105'),
('A1018', '11/15/2020', '12/01/2020', 'B1018', 'PA118', 'PH106'), 
('A1019', '12/15/2019', '12/16/2019', 'B1019', 'PA119', 'PH107'),
('A1020', '11/15/2019', '11/18/2019', 'B1020', 'PA120', 'PH108');

/* Mock Data for Items Table (6 items, 2 per cost center) */
INSERT INTO itemsTbl
VALUES
('I1010', 'Chest X-ray', '30.00', 'CC300'),
('I1020' , 'Glucose', '25.00', 'CC200'),
('I1030' , 'Semi-Private Room','200.00', 'CC200'),
('I1040' , 'Internet Access', '10.00', 'CC100'),
('I1050' , 'Private Room','250.00', 'CC100'),
('I1060' , 'Ultrasound','50.00', 'CC300');

/* Mock Data for Invoice Table (20 invoices per 20 patients) */
INSERT INTO invoiceTbl 
VALUES
('IN101', 'A1001', 'I1010'),
('IN102', 'A1002', 'I1020'),
('IN103','A1003', 'I1060'),
('IN104', 'A1004', 'I1030'),
('IN105','A1005', 'I1060'),
('IN106', 'A1006', 'I1010'),
('IN107', 'A1007', 'I1020'),
('IN108','A1008', 'I1060'),
('IN109', 'A1009', 'I1030'),
('IN110','A1010', 'I1060'),
('IN111', 'A1011', 'I1010'),
('IN112', 'A1012', 'I1020'),
('IN113','A1013', 'I1060'),
('IN114', 'A1014', 'I1030'),
('IN115','A1015', 'I1060'),
('IN116', 'A1016', 'I1010'),
('IN117', 'A1017', 'I1020'),
('IN118','A1018', 'I1060'),
('IN119', 'A1019', 'I1030'),
('IN120','A1020', 'I1060');

/* Mock Data for line items table (20 line items) */
INSERT INTO lineItemsTbl
VALUES
('LI101' , 'A1001', 'I1010', '12/01/2019', '2000.66'), 
('LI102' , 'A1002', 'I1020', '11/01/2019', '150.35'),
('LI103' , 'A1003', 'I1030', '12/01/2020', '899.64'), 
('LI104' , 'A1004', 'I1040', '12/16/2019', '8000.53'),
('LI105' , 'A1005', 'I1060', '11/18/2019', '999.11'),
('LI106' , 'A1006', 'I1010', '12/01/2019', '1520.15'), 
('LI107' , 'A1007', 'I1020', '11/01/2019', '1530.24'),
('LI108' , 'A1008', 'I1030', '12/01/2020', '124.96'), 
('LI109' , 'A1009', 'I1040', '12/16/2019', '8532.53'),
('LI110' , 'A1010', 'I1060', '11/18/2019', '999.80'),
('LI111' , 'A1011', 'I1010', '12/01/2019', '2531.26'), 
('LI112' , 'A1012', 'I1020', '11/01/2019', '120.66'),
('LI113' , 'A1013', 'I1030', '12/01/2020', '519.15'), 
('LI114' , 'A1014', 'I1040', '12/16/2019', '3522.62'),
('LI115' , 'A1015', 'I1060', '11/18/2019', '319.65'),
('LI116' , 'A1016', 'I1010', '12/01/2019', '232.73'), 
('LI117' , 'A1017', 'I1020', '11/01/2019', '5321.64'),
('LI118' , 'A1018', 'I1030', '12/01/2020', '1266.34'), 
('LI119' , 'A1019', 'I1040', '12/16/2019', '942.61'),
('LI120' , 'A1020', 'I1060', '11/18/2019', '219.66');

/* Mock Data for medical procedures table (20 medical procedures) */
INSERT INTO medicalProceduresTbl 
VALUES
('MP101', 'LI101', 'appendix removal', 'PH101'),
('MP102', 'LI102', 'blood test sample', 'PH102'),
('MP103', 'LI103', 'blood transfusion', 'PH103'),
('MP104', 'LI104', 'kidney stones removal', 'PH104'),
('MP105', 'LI105', 'applied cast to broken leg', 'PH105'),
('MP106', 'LI106', 'bone marrow aspiration', 'PH101'),
('MP107', 'LI107', 'glucose tolerance test', 'PH102'),
('MP108', 'LI108', 'enzyme analysis', 'PH103'),
('MP109', 'LI109', 'gastric fluid analysis', 'PH104'),
('MP110', 'LI110', 'kidney function test', 'PH105'),
('MP111', 'LI111', 'liver function test', 'PH101'),
('MP112', 'LI112', 'lumbar puncture', 'PH102'),
('MP113', 'LI113', 'malabsorption test', 'PH103'),
('MP114', 'LI114', 'pap smear', 'PH104'),
('MP115', 'LI115', 'pregnancy test', 'PH105'),
('MP116', 'LI116', 'prenatal testing', 'PH101'),
('MP117', 'LI117', 'syphilis test', 'PH102'),
('MP118', 'LI118', 'protein-bound iodine test', 'PH103'),
('MP119', 'LI119', 'toxicology test', 'PH104'),
('MP120', 'LI120', 'urinalysis/uroscopy', 'PH105');
