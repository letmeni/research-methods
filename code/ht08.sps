* Encoding: UTF-8.

GET
  FILE='/Users/stefan/Library/Mobile Documents/com~apple~CloudDocs/Downloads/ANES 2016 pilot.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.


RECODE ftobama (998=SYSMIS) (ELSE=Copy) INTO ftobama_recoded.
EXECUTE.

*Nonparametric Tests: Independent Samples. 
NPTESTS 
  /INDEPENDENT TEST (ftobama_recoded) GROUP (gender) 
  /MISSING SCOPE=ANALYSIS USERMISSING=EXCLUDE
  /CRITERIA ALPHA=0.05  CILEVEL=95.


* Mann-Whitney Rank-Sum Test.
NPAR TESTS
  /M-W= ftobama BY gender(1 2)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
DESCRIPTIVES VARIABLES=turnout12 birthyr gender newsint
  /STATISTICS=MEAN STDDEV MIN MAX.

RECODE turnout12 (2=0) (1=1) (3=SYSMIS) INTO turnout12_recoded.
EXECUTE.

RECODE newsint (4=1) (3=2) (2=3) (1=4) (7=SYSMIS) INTO newsint_recoded.
EXECUTE.

LOGISTIC REGRESSION VARIABLES turnout12_recoded
  /METHOD=ENTER newsint_recoded birthyr gender 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).


EXAMINE VARIABLES=ftobama_recoded BY gender
  /PLOT BOXPLOT STEMLEAF NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


