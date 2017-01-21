CREATE TABLE `accidentreports`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` double NULL, `DateTimeOfAccident` datetime NULL, `DateOfReport` datetime NULL, `WhoHadAccident` mediumtext NULL, `WhoReportedIt` varchar(75) NULL, `ReportDetailFiles` mediumtext NULL, `ReportDetails` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, `SentReceived` varchar(75) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `asbestosreports`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NOT NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SentReceived` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedOn` datetime NULL, `LastEditedBy` varchar(30) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `benchmarksanddatasheets`(`ID` int NOT NULL AUTO_INCREMENT, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `Status` varchar(30) NULL, `FlatNo` varchar(20) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `brochures`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `BrochureUpdateDate` datetime NULL, `SentReceived` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `buildingcontrol`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `buildingleaseconsent`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `clientcorrespondence`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SentOrReceived` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditeOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `clientrequestsandinstructions`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `companystructure`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `contracts`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `costplan`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `CommentBox` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `dayworksheets`(`ID` int NOT NULL AUTO_INCREMENT, `UserID` int NOT NULL, `JobID` int NOT NULL, `SubmittedChangedApproved` varchar(50) NULL, `WeekEndingDateWorked` date NULL, `Type` varchar(75) NULL, `WorksheetTemplate` varchar(75) NULL, `DayWorksheetsFile` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `documenttemplates`(`ID` int NOT NULL AUTO_INCREMENT, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `WindowName` varchar(75) NULL, `File` mediumtext NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `doorandironmongery`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `drawings`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Files` mediumtext NULL, `CommentBox` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `environmentalcossh`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `finalaccounts`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `CommentBox` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `finalcontracts`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `floorfinishesschedule`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `furniture`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `handoverandcompletioncertificates`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `DateReceived` datetime NULL, `SentOrReceived` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditeOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `healthandsafetyaudits`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedOrComplete` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `healthandsafetyinspectionreports`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` int NULL, `Files` mediumtext NULL, `SubmittedChangedOrComplete` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `healthandsafetyphaseplan`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `incomingtenders`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `invoicing`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `CommentBox` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `job`(`ID` int NOT NULL AUTO_INCREMENT, `ProjectName/No` varchar(50) NULL, `ProjectName` varchar(30) NOT NULL, `ProjectNo` varchar(30) NOT NULL, `StaffInvolved` mediumtext NULL, `Contractors` mediumtext NULL, `StartDate` datetime NULL, `Program` mediumtext NULL, `F10` mediumtext NULL, `CompanyInsurance` mediumtext NULL, `LastEditedOn` datetime NULL, `LastEditedBy` varchar(30) NULL, `JobStatus` varchar(30) NULL, `FinishDate` datetime NULL, `DilapidationReport` mediumtext NULL, `SiteManagerCertificateSMSTS` mediumtext NULL, `SiteManagerCertificateFirstAid` mediumtext NULL, `SiteManagerCertificateCSCS` mediumtext NULL, `SiteRules` mediumtext NULL, `SiteLogisticsPlan` mediumtext NULL, `MeterReadings` mediumtext NULL, `CompanyInsuranceExpiry` datetime NULL, `F10Expiry` datetime NULL, `SiteManagerCertificateSMSTSExpiry` datetime NULL, `SiteManagerCertificateFirstAidExpiry` datetime NULL, `SiteManagerCertificateCSCSExpiry` datetime NULL, `ConstructionPhasePlanTemplate` varchar(75) NULL, `ConstructionPhasePlanFiles` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `Address` mediumtext NULL, `Postcode` varchar(50) NULL, `Country` varchar(50) NULL, `GoodsLiftDimentions` mediumtext NULL, `DeliveryProcedure` mediumtext NULL, `SiteRulesTemplate` varchar(75) NULL, `DilapidationReportTemplate` varchar(75) NULL, `MeterReadingsTemplate` varchar(75) NULL, `GoodsLiftDimensionsTemplate` varchar(75) NULL, `DeliveryProcedureTemplate` varchar(75) NULL, `Lat` decimal(20,10) NULL, `Lng` decimal(20,10) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `keyhregister`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `letterofintent`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `lookup`(`ID` int NOT NULL AUTO_INCREMENT, `Type` varchar(50) NULL, `SubType` varchar(50) NULL, `Value` varchar(50) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `meetingminutes`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `DateHeld` datetime NULL, `ChairedBy` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `SentOrReceived` varchar(75) NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `news`(`ID` int NOT NULL AUTO_INCREMENT, `NewsInfo` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `orderform`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `outgoingtenders`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ownersmanual`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `ReceivedComplete` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `peopletimesheet`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NOT NULL, `UserID` int NOT NULL, `WeekEndingDateWorked` date NULL, `Type` varchar(75) NULL, `TimesheetTemplate` varchar(75) NULL, `PeopleTimesheetFile` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `permit`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `MobileNumber` varchar(50) NULL, `IssueDate` date NULL, `IssueTime` time NULL, `ExpiryDate` date NULL, `ExpiryTime` time NULL, `SubmittedCancelled` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `precontracts`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `procurement`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `CommentBox` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `progressreports`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `purchaseorders`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `quotationinstructions`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `rams`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `ReviewFormTemplate` int NULL, `RAMS` mediumtext NULL, `RAMSTemplate` int NULL, `CompanyLiabilityInsuranceDocument` mediumtext NULL, `CompanyLiabilityInsuranceExpiresOn` datetime NULL, `DateSubmited` date NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `rfis`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `rubbishremoval`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedComplete` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `samplesandvisuals`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `secretarial`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `Status` varchar(500) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditeOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `signinregister`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `sirtet_uggroups`(`GroupID` int NOT NULL AUTO_INCREMENT, `Label` varchar(300) NULL, PRIMARY KEY (`GroupID`))CHARACTER SET utf8;
CREATE TABLE `sirtet_ugmembers`(`UserName` varchar(300) NOT NULL, `GroupID` int NOT NULL, PRIMARY KEY (`UserName`(50),`GroupID`))CHARACTER SET utf8;
CREATE TABLE `sirtet_ugrights`(`TableName` varchar(300) NOT NULL, `GroupID` int NOT NULL, `AccessMask` varchar(10) NULL, PRIMARY KEY (`TableName`(50),`GroupID`))CHARACTER SET utf8;
CREATE TABLE `sitedeliverybookings`(`id` int NOT NULL AUTO_INCREMENT, `JobID` int NOT NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `AddedBy` varchar(100) NULL, `DriverName` varchar(50) NULL, `DriverSurname` varchar(50) NULL, `VehicleType` varchar(50) NULL, `VehicleMake` varchar(50) NULL, `VehicleRegistrationNumber` varchar(50) NULL, `DriverMobileNumber` varchar(50) NULL, `DateOfDelivery` date NULL, `TimeOfDelivery` time NULL, `DeliveryDescription` mediumtext NULL, `FromPostCode` varchar(50) NULL, `BookedOrCancelled` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(75) NULL, `LastEditedOn` datetime NULL, `PickupDropoff` varchar(50) NULL, `GoogleMapRoute` varchar(1000) NULL, `ToPostCode` varchar(1000) NULL, PRIMARY KEY (`id`))CHARACTER SET utf8;
CREATE TABLE `siteinduction`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NOT NULL, `Files` mediumtext NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `CertificateSMSTS` mediumtext NULL, `CertificateSMSTSExpiry` datetime NULL, `CertificateFirstAid` mediumtext NULL, `CertificateFirstAidExpiry` datetime NULL, `CertificateCSCS` mediumtext NULL, `CertificateCSCSExpiry` datetime NULL, `PersonNameAndSurname` varchar(75) NULL, `DateOfInduction` datetime NULL, `InductedNotInducted` varchar(50) NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `siteinstructionsandvariations`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Files` mediumtext NULL, `Template` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `SubmittedChangedComplete` varchar(75) NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `siteprogressphotos`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `sitesetup`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Files` mediumtext NULL, `Template` varchar(75) NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `DateSubmited` date NULL, `PlannedRemovalDate` date NULL, `ActualRemovalDate` date NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ska`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `skillscertificates`(`ID` int NOT NULL AUTO_INCREMENT, `Type` mediumtext NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `ExpiryDate` datetime NULL, `WorkerType` varchar(75) NULL, `WorkerName` varchar(75) NULL, `CompanyName` varchar(75) NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `snagging`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `UpdateAndComplete` varchar(50) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedOn` datetime NULL, `LastEditedBy` varchar(30) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `specifications`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SubmittedChangedApproved` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `survey`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `SubType` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `DateDone` datetime NULL, `SubmittedUpdatedComplete` varchar(75) NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `timelaps`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedBy` varchar(30) NULL, `LastEditedOn` datetime NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `toolboxtalks`(`ID` int NOT NULL AUTO_INCREMENT, `JobID` int NULL, `Type` varchar(75) NULL, `Template` varchar(75) NULL, `Files` mediumtext NULL, `DateImplemented` date NULL, `SendEmailTo` mediumtext NULL, `EmailNote` mediumtext NULL, `LastEditedOn` datetime NULL, `LastEditedBy` varchar(30) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `users`(`ID` int NOT NULL AUTO_INCREMENT, `username` varchar(300) NULL, `password` varchar(300) NULL, `email` varchar(300) NULL, `fullname` varchar(300) NULL, `active` int NULL, `FirstName` varchar(75) NULL, `Surname` varchar(75) NULL, `Company` varchar(75) NULL, `Roles` mediumtext NULL, `Type` varchar(50) NULL, `Status` varchar(50) NULL, `Barcode` mediumtext NULL, `LastEditedOn` datetime NULL, `LoginCount` int NULL DEFAULT 0, `JobID` int NULL, `LastEditedBy` varchar(30) NULL, `DefaultCompanyContact` int NULL DEFAULT 0, `MobileNumber` varchar(50) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;