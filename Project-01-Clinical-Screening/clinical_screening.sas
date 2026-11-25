/* PROJECT 01: CLINICAL TRIAL SCREENING */

/* PART 1: CREATE CLINICAL SCREENING DATASET */

Data CLINICAL_SCREENING;
	length Subject_ID $8 Sex $8 Screening_Status $10 
		Randomized $8;
		infile datalines delimiter='09'x;
	Input Subject_ID $ Site_ID Age Sex $ Screening_Status $ Randomized $;
	datalines;
S001	101	25	M	Eligible	Yes
S002	101	17	F	Ineligible	No
S003	102	42	F	Eligible	Yes
S004	102	68	M	Ineligible	No
S005	103	35	M	Eligible	Yes
S006	101	51	F	Eligible	Yes
S007	103	29	M	Ineligible	No
S008	102	60	F	Eligible	Yes
S009	103	19	M	Eligible	Yes
S010	101	44	F	Eligible	No
S011	102	32	M	Eligible	Yes
S012	103	70	F	Ineligible	No
S013	101	55	M	Eligible	Yes
S014	102	23	F	Eligible	Yes
S015	103	40	M	Eligible	No
;
run;

proc print data=clinical_screening;
run;

proc contents data=clinical_screening;
run;


/* PART 2: FILTERING PARTICIPANTS */

/* Eligible Participants */

data ELIGIBLE_PARTICIPANTS;
	SET WORK.CLINICAL_SCREENING;
	where Screening_Status="Eligible";
run;

proc print data=ELIGIBLE_PARTICIPANTS;
RUN;

/* Ineligible Participants */ 

data INELIGIBLE_PARTICIPANTS;
	SET WORK.CLINICAL_SCREENING;
	WHERE Screening_Status="Ineligible";
run;

proc print data=ineligible_participants;
run;

/* Randomized Participants */

data RANDOMIZED_PARTICIPANTS;
	SET work.clinical_screening;
	where Randomized="Yes";
run;

proc print data=RANDOMIZED_PARTICIPANTS;
run;


/* PART 3: FREQUENCY ANALYSIS */

/* Screening Status Frequency */

proc freq data=work.clinical_screening; 
tables Screening_Status; 
RUN;

/* Randomization Frequency */

proc freq data=work.clinical_screening;
	tables Randomized;
run;

/* Frequency by Site */

proc freq data=work.clinical_screening; 
tables Site_ID; 
run;

/* Two Way Frequency */

proc freq data=work.clinical_screening;
	tables Site_ID*Screening_Status;
run;

/* NOCUM frequency */

proc freq data=work.clinical_screening; 
tables Screening_Status / NOCUM; 
run;

/* PART 4: SORTING */

/* Sorted by Ascending Age */

proc sort data=work.clinical_screening out=sorted_clinical_screening; 
by Age; 
run;

/* Sorted by Descending Age */

proc sort data=work.clinical_screening out=age_descending; 
by descending Age; 
run;

/* Sorted by multiple variable (Site_ID X Age) */

proc sort data=work.clinical_screening out=site_age_sorted; 
by Site_ID Age; 
run;

/* Sorted by Multiple variable Mixed(Ascending X Descending) */

proc sort data=work.clinical_screening out=site_age_mixed; 
by Site_ID descending Age; 
run;

/* PART 5: DESCRIPTIVE STATISTICS */
/* PROC MEANS */

/* Means_Age */

proc means data=work.clinical_screening;
var Age;
run;

/* Selecting Specific Statistic */

proc means data=work.clinical_screening N MEAN MIN MAX; 
var Age; 
run;

/* Means Age within Site*/

proc means data=work.clinical_screening; 
class Site_ID; 
var Age; 
run;

/* Means Age within Sex */

proc means data=work.clinical_screening N MEAN MIN MAX; 
class Sex; 
var Age; 
run;


/* PART 6: SUMMARY DATASETS */

/* Age Summary */

proc summary data=work.clinical_screening print;
var Age;
run;

/* Age Summary Output Dataset */

proc summary data=work.clinical_screening;
var Age;
output out=age_summary mean=Average_Age;
run;

/* Multiple Statistics Summary Dataset  */

proc summary data=work.clinical_screening;
	var age;
	output out=complete_age_summary mean=Average_Age min=Minimum_Age 
		max=Maximum_Age N=Total_Participants;
run;


/* PART 7: FINAL SITE-WISE ANALYSIS */

/* Eligible participants grouped by Site_ID */

proc summary data=work.eligible_participants;
class Site_ID;
var Age;
output out=eligible_site_summary mean=Average_Age N=No_of_Participants;
run;

proc print data=work.eligible_site_summary;
run;


