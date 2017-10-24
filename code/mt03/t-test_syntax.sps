* Encoding: UTF-8.

PRESERVE.
SET DECIMAL DOT.

* Load csv file

GET DATA  /TYPE=TXT
  /FILE="/Users/stefan/GitHub/po3600/data/mt_03/dublin_rent_simulated.csv"
  /ENCODING='UTF8'
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  price AUTO
  area AUTO
  /MAP.
RESTORE.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.


* Two sample t-test

DATASET ACTIVATE DataSet1.
T-TEST GROUPS=area(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=price
  /CRITERIA=CI(.95).

*Filter only South Dublin (area = 2)

USE ALL.
COMPUTE filter_$=(area = 2).
VARIABLE LABELS filter_$ 'area = 2 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Conduct one-sample t-test 

T-TEST
  /TESTVAL=350
  /MISSING=ANALYSIS
  /VARIABLES=price
  /CRITERIA=CI(.95).


