# Project 01: Clinical Trial Subject Screening and Enrollment

## Overview
This project demonstrates the creation and management of a clinical trial subject screening dataset using SAS programming.

The fictional dataset contains 15 clinical trial participants from three research sites.

## Objectives
- Create a clinical trial screening dataset.
- Define appropriate variable types and lengths.
- Read tab-delimited data using the INFILE statement.
- Display and inspect the dataset using PROC PRINT and PROC CONTENTS.

## Dataset Description

| Variable | Description | Type |
|---|---|---|
| Subject_ID | Participant identification | Character |
| Site_ID | Clinical research site ID | Numeric |
| Age | Participant age | Numeric |
| Sex | Participant sex | Character |
| Screening_Status | Screening eligibility | Character |
| Randomized | Randomization status | Character |

## Expected Output

- A SAS dataset containing 15 fictional clinical trial participants.
- A printed dataset displaying all participant records.
- Dataset metadata showing variable names, types, and lengths.

## SAS Concepts Used
- DATA step
- LENGTH statement
- INFILE statement
- Delimiter specification
- INPUT statement
- DATALINES
- PROC PRINT
- PROC CONTENTS

## Project Status
- Phase 1: Dataset creation and inspection — Completed.
- Phase 2: Data manipulation — In progress.
- Phase 3: Clinical data analysis — Pending.
- Phase 4: Reporting and documentation — Pending.

## Tools
- SAS Studio
- SAS Programming Language
- GitHub

## Disclaimer
This project uses fictional data for educational and portfolio purposes only. It is not intended for actual clinical research or regulatory submission.


## Project Progress

### Phase 1: Dataset Creation and Inspection – Completed
- Created a fictional clinical trial screening dataset containing 15 participants across 3 research sites.
- Defined character and numeric variables.
- Read tab-delimited data using `INFILE` and `DATALINES`.
- Inspected the dataset using `PROC PRINT` and `PROC CONTENTS`.

### Phase 2: Data Manipulation and Descriptive Analysis – Completed

- Created subsets for eligible, ineligible, and randomized participants using DATA steps and WHERE statements.
- Performed frequency analysis using `PROC FREQ`.
- Generated one-way and two-way frequency tables.
- Sorted clinical screening records using `PROC SORT`.
- Calculated descriptive statistics using `PROC MEANS`.
- Generated summary datasets using `PROC SUMMARY`.
- Performed site-wise analysis of eligible participants.

### Key Findings
- Total participants: 15
- Eligible participants: 11
- Ineligible participants: 4
- Randomized participants: 9
- Research sites: 3

### Final Site-wise Analysis

| Site ID | Eligible Participants | Average Age |
|---|---:|---:|
| 101 | 4 | 43.75 |
| 102 | 4 | 39.25 |
| 103 | 3 | 31.33 |

### SAS Concepts Practiced
`DATA`, `SET`, `WHERE`, `INFILE`, `DATALINES`, `PROC PRINT`, `PROC CONTENTS`, `PROC FREQ`, `PROC SORT`, `PROC MEANS`, `PROC SUMMARY`, `CLASS`, and `OUTPUT OUT=`.

**Project Status:** Phase 1 and Phase 2 completed.

*Note: This is a fictional educational project created for SAS programming practice. It does not contain real patient data or represent a validated clinical trial analysis.*
