CREATE DATABASE IF NOT EXISTS `joos` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;

USE `joos`;

--
-- Table structure for table `admin_admissions`
--

DROP TABLE IF EXISTS `admin_admissions`;
CREATE TABLE `admin_admissions` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `candidateId` int NOT NULL,
  `vote` int NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`,`candidateId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_advisors`
--

DROP TABLE IF EXISTS `admin_advisors`;
CREATE TABLE `admin_advisors` (
  `userId` int NOT NULL,
  `advisorId` int DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications`
--

DROP TABLE IF EXISTS `admin_applications`;
CREATE TABLE `admin_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `viewPath` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `editPath` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `viewRoles` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `editRoles` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `heading_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `heading_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dbTable` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_christian_life`
--

DROP TABLE IF EXISTS `admin_applications_christian_life`;
CREATE TABLE `admin_applications_christian_life` (
  `userId` int NOT NULL,
  `churchName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `churchMember` tinyint(1) DEFAULT NULL,
  `churchMemberHowLong` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ministryTalent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `ministryExperience` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `testimony` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `statementOfFaithApproval` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_document_types`
--

DROP TABLE IF EXISTS `admin_applications_document_types`;
CREATE TABLE `admin_applications_document_types` (
  `documentTypeId` int NOT NULL AUTO_INCREMENT,
  `title_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `viewRoles` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`documentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_documents`
--

DROP TABLE IF EXISTS `admin_applications_documents`;
CREATE TABLE `admin_applications_documents` (
  `userId` int NOT NULL,
  `documentId` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `documentTypeId` int DEFAULT NULL,
  PRIMARY KEY (`documentId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_education`
--

DROP TABLE IF EXISTS `admin_applications_education`;
CREATE TABLE `admin_applications_education` (
  `userId` int NOT NULL,
  `elementaryName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `elementaryGraduationYear` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `middleSchoolName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `middleSchoolGraduationYear` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolGraduationYear` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolDiscipline` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `greek` int DEFAULT NULL,
  `english` int DEFAULT NULL,
  `communityCollegeName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeGraduationYear` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeDiscipline` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeGraduationYear` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeDiscipline` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolGraduationYear` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolDiscipline` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_financial`
--

DROP TABLE IF EXISTS `admin_applications_financial`;
CREATE TABLE `admin_applications_financial` (
  `userId` int NOT NULL,
  `studentPackage` int DEFAULT NULL,
  `financialApproval` tinyint(1) DEFAULT NULL,
  `selfPaid` tinyint(1) DEFAULT NULL,
  `sponsors` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sponsorsTotal` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debtApproval` tinyint(1) DEFAULT NULL,
  `deposit` int DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_health`
--

DROP TABLE IF EXISTS `admin_applications_health`;
CREATE TABLE `admin_applications_health` (
  `userId` int NOT NULL,
  `tonsillitis` tinyint(1) DEFAULT NULL,
  `chickenPox` tinyint(1) DEFAULT NULL,
  `bronchialAsthma` tinyint(1) DEFAULT NULL,
  `diphtheria` tinyint(1) DEFAULT NULL,
  `epilepsy` tinyint(1) DEFAULT NULL,
  `rubella` tinyint(1) DEFAULT NULL,
  `measles` tinyint(1) DEFAULT NULL,
  `yellowFever` tinyint(1) DEFAULT NULL,
  `meningitis` tinyint(1) DEFAULT NULL,
  `mumps` tinyint(1) DEFAULT NULL,
  `polio` tinyint(1) DEFAULT NULL,
  `cholera` tinyint(1) DEFAULT NULL,
  `heartAbnormality` tinyint(1) DEFAULT NULL,
  `otherDiseases` tinyint(1) DEFAULT NULL,
  `otherDiseasesDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `vaccineDiphtheria` tinyint(1) DEFAULT NULL,
  `vaccinePertussis` tinyint(1) DEFAULT NULL,
  `vaccineTetanus` tinyint(1) DEFAULT NULL,
  `vaccineSmallpox` tinyint(1) DEFAULT NULL,
  `vaccineRubella` tinyint(1) DEFAULT NULL,
  `vaccineMeasles` tinyint(1) DEFAULT NULL,
  `vaccineMumps` tinyint(1) DEFAULT NULL,
  `vaccinePolio` tinyint(1) DEFAULT NULL,
  `vaccineCholera` tinyint(1) DEFAULT NULL,
  `otherVaccines` tinyint(1) DEFAULT NULL,
  `otherVaccinesDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `drugsUse` tinyint(1) DEFAULT NULL,
  `drugsUseDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `currentDiseases` tinyint(1) DEFAULT NULL,
  `currentDiseasesDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `currentSymptoms` tinyint(1) DEFAULT NULL,
  `currentSymptomsDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `currentMedicines` tinyint(1) DEFAULT NULL,
  `currentMedicinesDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `foodAllergy` tinyint(1) DEFAULT NULL,
  `foodAllergyDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `firstEmergencyContactFirstName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `firstEmergencyContactLastName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `firstEmergencyContactPhone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `secondEmergencyContactFirstName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `secondEmergencyContactLastName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `secondEmergencyContactPhone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctor` tinyint(1) DEFAULT NULL,
  `doctorFirstName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctorLastName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctorPhone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctorAddress` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctorCity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctorZipCode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctorCountry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `doctorContactApproval` tinyint(1) DEFAULT NULL,
  `otherDoctorContactApproval` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_isp_applicant_classification`
--

DROP TABLE IF EXISTS `admin_applications_isp_applicant_classification`;
CREATE TABLE `admin_applications_isp_applicant_classification` (
  `userId` int NOT NULL,
  `classificationId` int DEFAULT NULL,
  `startingDate` date DEFAULT NULL,
  `accommodationRequired` tinyint(1) DEFAULT NULL,
  `visaRequired` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_isp_christian_life`
--

DROP TABLE IF EXISTS `admin_applications_isp_christian_life`;
CREATE TABLE `admin_applications_isp_christian_life` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `familyBackground` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `testimony` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `spiritualGrowth` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `statementOfFaithApproval` tinyint(1) DEFAULT NULL,
  `ministryTalent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `ministryExperience` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `reasonsToEnroll` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `conviction` tinyint(1) DEFAULT NULL,
  `convictionDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_isp_education`
--

DROP TABLE IF EXISTS `admin_applications_isp_education`;
CREATE TABLE `admin_applications_isp_education` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `secondarySchoolName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolGraduationYear` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondarySchoolCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `englishHighSchool` tinyint(1) DEFAULT NULL,
  `englishCertificate` tinyint(1) DEFAULT NULL,
  `communityCollegeName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeDatesAttended` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeDiscipline` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `communityCollegeCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeDatesAttended` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeDiscipline` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collegeCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolDatesAttended` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolDiscipline` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `graduateSchoolCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dismissed` tinyint(1) DEFAULT NULL,
  `dismissedDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `honors` tinyint(1) DEFAULT NULL,
  `honorsDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_isp_financial`
--

DROP TABLE IF EXISTS `admin_applications_isp_financial`;
CREATE TABLE `admin_applications_isp_financial` (
  `userId` int NOT NULL,
  `tuition` decimal(10,2) DEFAULT NULL,
  `roomBoard` decimal(10,2) DEFAULT NULL,
  `paymentSchedule` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `financialApproval` tinyint(1) DEFAULT NULL,
  `selfPaid` tinyint(1) DEFAULT NULL,
  `sponsors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `sponsorsTotal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `debtApproval` tinyint(1) DEFAULT NULL,
  `applicationFee` int DEFAULT NULL,
  `feeUrl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_isp_health`
--

DROP TABLE IF EXISTS `admin_applications_isp_health`;
CREATE TABLE `admin_applications_isp_health` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `drugsUse` tinyint(1) DEFAULT NULL,
  `drugsUseDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `currentDiseases` tinyint(1) DEFAULT NULL,
  `currentDiseasesDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `currentSymptoms` tinyint(1) DEFAULT NULL,
  `currentSymptomsDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `currentMedicines` tinyint(1) DEFAULT NULL,
  `currentMedicinesDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `foodAllergy` tinyint(1) DEFAULT NULL,
  `foodAllergyDetails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `firstEmergencyContactFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstEmergencyContactLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstEmergencyContactPhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondEmergencyContactFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondEmergencyContactLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondEmergencyContactPhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `otherDoctorContactApproval` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_isp_personal`
--

DROP TABLE IF EXISTS `admin_applications_isp_personal`;
CREATE TABLE `admin_applications_isp_personal` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `birthDate` date DEFAULT NULL,
  `birthPlace` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `occupation` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `citizenship` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ssn` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `euCitizen` tinyint(1) DEFAULT NULL,
  `passportNumber` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `residencePermit` tinyint(1) DEFAULT NULL,
  `familyStatus` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `familySpouseFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `familySpouseLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `familyKids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `familyKidsNamesAges` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permanentAddressDifferent` tinyint(1) DEFAULT NULL,
  `permanentAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permanentCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permanentZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permanentCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianOccupation` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianPhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianAddressSame` tinyint(1) DEFAULT NULL,
  `guardianAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianOpinion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_isp_references`
--

DROP TABLE IF EXISTS `admin_applications_isp_references`;
CREATE TABLE `admin_applications_isp_references` (
  `userId` int NOT NULL,
  `pastoralReferenceId` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceId` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferenceFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferenceLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferenceEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferencePhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferenceAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferenceCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferenceZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pastoralReferenceCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferencePhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `academicReferenceCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_letters_of_recommendation`
--

DROP TABLE IF EXISTS `admin_applications_letters_of_recommendation`;
CREATE TABLE `admin_applications_letters_of_recommendation` (
  `id` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `userId` int NOT NULL,
  `authorFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `authorLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `authorOccupation` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `authorAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `authorCityZipCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `authorPhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `authorEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q1` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q2` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q3` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q4` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q5` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q6` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q7` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q8` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q9` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q10` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q11` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q12` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q13` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q14` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q15` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q16` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q17` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q18` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q19` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `q20` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `unsuitable` tinyint(1) DEFAULT '0',
  `suitable` tinyint(1) DEFAULT '0',
  `thorough` tinyint(1) DEFAULT '0',
  `rational` tinyint(1) DEFAULT '0',
  `undisciplined` tinyint(1) DEFAULT '0',
  `disciplined` tinyint(1) DEFAULT '0',
  `immature` tinyint(1) DEFAULT '0',
  `quiteMature` tinyint(1) DEFAULT '0',
  `easyGoing` tinyint(1) DEFAULT '0',
  `obedient` tinyint(1) DEFAULT '0',
  `cooperative` tinyint(1) DEFAULT '0',
  `wasteful` tinyint(1) DEFAULT '0',
  `reliable` tinyint(1) DEFAULT '0',
  `unreliable` tinyint(1) DEFAULT '0',
  `selfCentered` tinyint(1) DEFAULT '0',
  `giving` tinyint(1) DEFAULT '0',
  `servant` tinyint(1) DEFAULT '0',
  `nervous` tinyint(1) DEFAULT '0',
  `narrowMinded` tinyint(1) DEFAULT '0',
  `inflexible` tinyint(1) DEFAULT '0',
  `private` tinyint(1) DEFAULT '0',
  `friendly` tinyint(1) DEFAULT '0',
  `pleasant` tinyint(1) DEFAULT '0',
  `achiever` tinyint(1) DEFAULT '0',
  `extraInfo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_personal`
--

DROP TABLE IF EXISTS `admin_applications_personal`;
CREATE TABLE `admin_applications_personal` (
  `userId` int NOT NULL,
  `birthDate` date DEFAULT NULL,
  `birthPlace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `occupation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `greekCitizen` tinyint(1) DEFAULT NULL,
  `greekIdNumber` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `greekSsn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `irsOffice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `citizenship` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `euCitizen` tinyint(1) DEFAULT NULL,
  `passportNumber` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `residencePermit` tinyint(1) DEFAULT NULL,
  `familyStatus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `familySpouseFirstName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `familySpouseLastName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `familyKids` tinyint(1) DEFAULT NULL,
  `familyKidsNamesAges` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `zipCode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianFirstName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianLastName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianOccupation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `guardianPhone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianAddressSame` tinyint(1) DEFAULT NULL,
  `guardianAddress` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianCity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianZipCode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianCountry` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `guardianOpinion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_applications_references`
--

DROP TABLE IF EXISTS `admin_applications_references`;
CREATE TABLE `admin_applications_references` (
  `userId` int NOT NULL DEFAULT '0',
  `formTemplateId` bigint NOT NULL DEFAULT '0',
  `referenceId` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `priority` bigint NOT NULL DEFAULT '0',
  UNIQUE KEY `userId` (`userId`,`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `admin_applications_references_old`
--

DROP TABLE IF EXISTS `admin_applications_references_old`;
CREATE TABLE `admin_applications_references_old` (
  `userId` int NOT NULL,
  `firstReferenceId` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceId` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceId` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferenceFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferenceLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferenceEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferencePhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferenceAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferenceCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferenceZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `firstReferenceCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferencePhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondReferenceCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceFirstName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceLastName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceEmail` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferencePhone` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceAddress` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceCity` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceZipCode` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thirdReferenceCountry` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_chapel_categories`
--

DROP TABLE IF EXISTS `admin_chapel_categories`;
CREATE TABLE `admin_chapel_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_chapel_schedule`
--

DROP TABLE IF EXISTS `admin_chapel_schedule`;
CREATE TABLE `admin_chapel_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `categoryId` int NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_course_attendance`
--

DROP TABLE IF EXISTS `admin_course_attendance`;
CREATE TABLE `admin_course_attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `attendance_first` int DEFAULT NULL,
  `attendance_second` int DEFAULT NULL,
  `attendance_third` int DEFAULT NULL,
  `attendance_fourth` int DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_course_categories`
--

DROP TABLE IF EXISTS `admin_course_categories`;
CREATE TABLE `admin_course_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `code_gr` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code_en` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_course_enrollment`
--

DROP TABLE IF EXISTS `admin_course_enrollment`;
CREATE TABLE `admin_course_enrollment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `courseFractionId` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `grade` decimal(10,1) DEFAULT NULL,
  `gradeSemester` int DEFAULT NULL,
  `gradeYear` int DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_course_fractions`
--

DROP TABLE IF EXISTS `admin_course_fractions`;
CREATE TABLE `admin_course_fractions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `courseId` int NOT NULL,
  `label` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_course_prerequisites`
--

DROP TABLE IF EXISTS `admin_course_prerequisites`;
CREATE TABLE `admin_course_prerequisites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `courseId` int NOT NULL,
  `prerequisiteCourseId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_courses`
--

DROP TABLE IF EXISTS `admin_courses`;
CREATE TABLE `admin_courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `category_id` int NOT NULL,
  `code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code_gr` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code_en` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `credits` int NOT NULL,
  `ects_credits` int NOT NULL,
  `year` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `required` tinyint NOT NULL DEFAULT '0',
  `offered_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `offered_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `moodle_id` int DEFAULT NULL,
  `moodle_category_id` int DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_errors`
--

DROP TABLE IF EXISTS `admin_errors`;
CREATE TABLE `admin_errors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `userId` int DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `uri` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `line` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `open` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `source` (`source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_evaluations`
--

DROP TABLE IF EXISTS `admin_evaluations`;
CREATE TABLE `admin_evaluations` (
  `forUserId` int NOT NULL,
  `forCourseId` int NOT NULL,
  `evaluation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_evaluations_pending`
--

DROP TABLE IF EXISTS `admin_evaluations_pending`;
CREATE TABLE `admin_evaluations_pending` (
  `forUserId` int NOT NULL,
  `fromUserId` int NOT NULL,
  `forCourseId` int NOT NULL,
  PRIMARY KEY (`fromUserId`,`forUserId`,`forCourseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_files`
--

DROP TABLE IF EXISTS `admin_files`;
CREATE TABLE `admin_files` (
  `owner_id` int NOT NULL,
  `filename` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filesize` int NOT NULL,
  `original_filename` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `original_mime_type` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_finances_records`
--

DROP TABLE IF EXISTS `admin_finances_records`;
CREATE TABLE `admin_finances_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `category_id` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_finances_template_item_categories`
--

DROP TABLE IF EXISTS `admin_finances_template_item_categories`;
CREATE TABLE `admin_finances_template_item_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_finances_template_items`
--

DROP TABLE IF EXISTS `admin_finances_template_items`;
CREATE TABLE `admin_finances_template_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_form_questions`
--

DROP TABLE IF EXISTS `admin_form_questions`;
CREATE TABLE `admin_form_questions` (
  `questionId` int NOT NULL AUTO_INCREMENT,
  `title_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `title_gr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `type` int DEFAULT '0',
  `childrenIds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`questionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_form_responses`
--

DROP TABLE IF EXISTS `admin_form_responses`;
CREATE TABLE `admin_form_responses` (
  `formId` char(34) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `response` longtext,
  PRIMARY KEY (`formId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `admin_form_templates`
--

DROP TABLE IF EXISTS `admin_form_templates`;
CREATE TABLE `admin_form_templates` (
  `templateId` int NOT NULL AUTO_INCREMENT,
  `title_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `title_gr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `questionIds` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`templateId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_logs`
--

DROP TABLE IF EXISTS `admin_logs`;
CREATE TABLE `admin_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `post_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `admin_notification_templates`
--

DROP TABLE IF EXISTS `admin_notification_templates`;
CREATE TABLE `admin_notification_templates` (
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subject_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `body_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `body_gr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
CREATE TABLE `admin_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fromUserId` int DEFAULT NULL,
  `forUserId` int DEFAULT NULL,
  `body_gr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `body_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `read` tinyint(1) DEFAULT '0',
  `hidden` tinyint(1) DEFAULT '0',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_operations`
--

DROP TABLE IF EXISTS `admin_operations`;
CREATE TABLE `admin_operations` (
  `operation` varchar(172) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `role` varchar(78) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`operation`,`role`),
  FULLTEXT KEY `role` (`role`),
  FULLTEXT KEY `operation` (`operation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_program_enrollment`
--

DROP TABLE IF EXISTS `admin_program_enrollment`;
CREATE TABLE `admin_program_enrollment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `program_id` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `graduated` tinyint(1) NOT NULL DEFAULT '0',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_programs`
--

DROP TABLE IF EXISTS `admin_programs`;
CREATE TABLE `admin_programs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_name_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `program_name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `number_of_semesters` int NOT NULL,
  `required_credits` int NOT NULL,
  `required_ects_credits` int NOT NULL,
  `applications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `auditor_applications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `program_name_gr` (`program_name_gr`),
  UNIQUE KEY `program_name_eng` (`program_name_en`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_schedule`
--

DROP TABLE IF EXISTS `admin_schedule`;
CREATE TABLE `admin_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `courseId` int NOT NULL,
  `courseFractionId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_schedule_settings`
--

DROP TABLE IF EXISTS `admin_schedule_settings`;
CREATE TABLE `admin_schedule_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `programId` int DEFAULT NULL,
  `courseId` int DEFAULT NULL,
  `professorId` int DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_student_progress_items`
--

DROP TABLE IF EXISTS `admin_student_progress_items`;
CREATE TABLE `admin_student_progress_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `field_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filename` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `last_editor_id` int NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_student_progress_schema`
--

DROP TABLE IF EXISTS `admin_student_progress_schema`;
CREATE TABLE `admin_student_progress_schema` (
  `order` int NOT NULL AUTO_INCREMENT,
  `field_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_description_gr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field_description_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `view_roles` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `edit_roles` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL,
  `requires_document` tinyint(1) DEFAULT NULL,
  `program_id` int NOT NULL,
  `for_semester` int NOT NULL,
  PRIMARY KEY (`field_name`),
  UNIQUE KEY `order` (`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_user_applications`
--

DROP TABLE IF EXISTS `admin_user_applications`;
CREATE TABLE `admin_user_applications` (
  `userId` int NOT NULL,
  `applicationId` int NOT NULL,
  `applicationStatus` int DEFAULT '0',
  `hidden` tinyint(1) DEFAULT '0',
  `rejectionReason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`userId`,`applicationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_user_profiles`
--

DROP TABLE IF EXISTS `admin_user_profiles`;
CREATE TABLE `admin_user_profiles` (
  `id` int NOT NULL,
  `birthDate` date DEFAULT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `greekCitizen` tinyint DEFAULT NULL,
  `greekIdNumber` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `greekSsn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `irsOffice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `citizenship` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `euCitizen` tinyint DEFAULT NULL,
  `passportNumber` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `residencePermit` tinyint DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `zipCode` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `photoURI` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_user_roles`
--

DROP TABLE IF EXISTS `admin_user_roles`;
CREATE TABLE `admin_user_roles` (
  `userId` int NOT NULL,
  `roleId` int NOT NULL,
  `forProgramId` int DEFAULT NULL,
  UNIQUE KEY `userId` (`userId`,`roleId`,`forProgramId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lastName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `roles` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `language` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'gr',
  `authentication_token` char(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `authentication_token` (`authentication_token`),
  FULLTEXT KEY `role` (`roles`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `admin_variables`
--

DROP TABLE IF EXISTS `admin_variables`;
CREATE TABLE `admin_variables` (
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `dateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Table structure for table `library_author_types`
--

DROP TABLE IF EXISTS `library_author_types`;
CREATE TABLE `library_author_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_authors`
--

DROP TABLE IF EXISTS `library_authors`;
CREATE TABLE `library_authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last` varchar(250) DEFAULT NULL,
  `first` varchar(250) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `full` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  FULLTEXT KEY `first` (`first`),
  FULLTEXT KEY `last` (`last`),
  FULLTEXT KEY `full` (`full`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_books`
--

DROP TABLE IF EXISTS `library_books`;
CREATE TABLE `library_books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `barcode` bigint DEFAULT NULL,
  `eh_id` int DEFAULT NULL,
  `gh_id` int DEFAULT NULL,
  `media_type_id` int DEFAULT NULL,
  `extra_media` tinyint(1) DEFAULT NULL,
  `collection_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `language2_id` int DEFAULT NULL,
  `translated` tinyint(1) DEFAULT NULL,
  `title` varchar(512) DEFAULT NULL,
  `subtitle` varchar(512) DEFAULT NULL,
  `original_title` varchar(512) DEFAULT NULL,
  `original_subtitle` varchar(512) DEFAULT NULL,
  `main_author_id` int DEFAULT NULL,
  `series_id` int DEFAULT NULL,
  `series_volume` text,
  `copyright` varchar(64) DEFAULT NULL,
  `edition` varchar(64) DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `place_id` int DEFAULT NULL,
  `no_pages` varchar(128) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `ISBN_10` varchar(10) DEFAULT NULL,
  `ISBN_13` varchar(64) DEFAULT NULL,
  `biography_cutter` varchar(16) DEFAULT NULL,
  `author_cutter` varchar(16) DEFAULT NULL,
  `dewey_classification` varchar(512) DEFAULT NULL,
  `dewey_decimal` varchar(16) DEFAULT NULL,
  `public_notes` text,
  `private_notes` text,
  `source_id` int DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `copy_number` varchar(16) DEFAULT NULL,
  `extra_letter` varchar(16) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `barcode` (`barcode`),
  KEY `eh_id` (`eh_id`),
  KEY `gh_id` (`gh_id`),
  KEY `media_type_id` (`media_type_id`),
  KEY `extra_media` (`extra_media`),
  KEY `collection_id` (`collection_id`),
  KEY `language_id` (`language_id`),
  KEY `language2_id` (`language2_id`),
  KEY `translated` (`translated`),
  KEY `main_author_id` (`main_author_id`),
  KEY `series_id` (`series_id`),
  KEY `publisher_id` (`publisher_id`),
  KEY `place_id` (`place_id`),
  KEY `height` (`height`),
  KEY `source_id` (`source_id`),
  KEY `date_added` (`date_added`),
  KEY `timestamp` (`timestamp`),
  KEY `title` (`title`(250)),
  KEY `subtitle` (`subtitle`(250)),
  KEY `original_title` (`original_title`(250)),
  KEY `original_subtitle` (`original_subtitle`(250)),
  KEY `no_pages` (`no_pages`),
  KEY `isbn_10` (`ISBN_10`),
  KEY `isbn_13` (`ISBN_13`),
  KEY `biography_cutter` (`biography_cutter`),
  KEY `author_cutter` (`author_cutter`),
  KEY `dewey_classification` (`dewey_classification`(250)),
  KEY `dewey_decimal` (`dewey_decimal`),
  KEY `copy_number` (`copy_number`),
  KEY `extra_letter` (`extra_letter`),
  KEY `copyright` (`copyright`),
  KEY `edition` (`edition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_books_authors`
--

DROP TABLE IF EXISTS `library_books_authors`;
CREATE TABLE `library_books_authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `book_id` (`book_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_books_reserved`
--

DROP TABLE IF EXISTS `library_books_reserved`;
CREATE TABLE `library_books_reserved` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `barcode` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_books_subjects`
--

DROP TABLE IF EXISTS `library_books_subjects`;
CREATE TABLE `library_books_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `book_id` (`book_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_checkouts`
--

DROP TABLE IF EXISTS `library_checkouts`;
CREATE TABLE `library_checkouts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_barcode` bigint NOT NULL,
  `book_barcode` bigint NOT NULL,
  `date_out` date NOT NULL,
  `due_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_checkouts_history`
--

DROP TABLE IF EXISTS `library_checkouts_history`;
CREATE TABLE `library_checkouts_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_barcode` bigint NOT NULL,
  `book_barcode` bigint NOT NULL,
  `date_out` date NOT NULL,
  `due_date` date NOT NULL,
  `date_in` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_collections`
--

DROP TABLE IF EXISTS `library_collections`;
CREATE TABLE `library_collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_covers`
--

DROP TABLE IF EXISTS `library_covers`;
CREATE TABLE `library_covers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `barcode` bigint DEFAULT NULL,
  `cover_url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_languages`
--

DROP TABLE IF EXISTS `library_languages`;
CREATE TABLE `library_languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_media_types`
--

DROP TABLE IF EXISTS `library_media_types`;
CREATE TABLE `library_media_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_places`
--

DROP TABLE IF EXISTS `library_places`;
CREATE TABLE `library_places` (
  `id` int NOT NULL AUTO_INCREMENT,
  `place` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `place` (`place`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_search`
--

DROP TABLE IF EXISTS `library_search`;
CREATE TABLE `library_search` (
  `book_id` int DEFAULT '0',
  `barcode` bigint DEFAULT NULL,
  `title` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL,
  `subtitle` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL,
  `series` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL,
  `subject` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL,
  `main_author_last` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `main_author_first` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `last` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `first` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `publisher` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `biography_cutter` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `author_cutter` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dewey_classification` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL,
  `dewey_decimal` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `copy_number` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `extra_letter` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_search_auto`
--

DROP TABLE IF EXISTS `library_search_auto`;
CREATE TABLE `library_search_auto` (
  `haystack` varchar(512) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_series`
--

DROP TABLE IF EXISTS `library_series`;
CREATE TABLE `library_series` (
  `id` int NOT NULL AUTO_INCREMENT,
  `series` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `series` (`series`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_sources`
--

DROP TABLE IF EXISTS `library_sources`;
CREATE TABLE `library_sources` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `source` (`source`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_subjects`
--

DROP TABLE IF EXISTS `library_subjects`;
CREATE TABLE `library_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `subject` (`subject`(250))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_user_categories`
--

DROP TABLE IF EXISTS `library_user_categories`;
CREATE TABLE `library_user_categories` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `credits` int DEFAULT NULL,
  `days` int DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `library_users`
--

DROP TABLE IF EXISTS `library_users`;
CREATE TABLE `library_users` (
  `barcode` bigint NOT NULL,
  `userId` int DEFAULT NULL,
  `first` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `credits` int NOT NULL,
  `type` int DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
