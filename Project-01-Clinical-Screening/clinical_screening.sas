Data CLINICAL_SCREENING;
	length Subject_ID $08 Site_ID 08 Age 08 Sex $08 Screening_Status $10 
		Randomized $08;
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
