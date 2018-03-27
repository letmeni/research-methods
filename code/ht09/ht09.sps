* Encoding: UTF-8.

GET
  FILE='/Users/stefan/Library/Mobile Documents/com~apple~CloudDocs/Downloads/ANES 2016 pilot.sav'.
DATASET NAME DataSet1 WINDOW=FRONT.



DATASET ACTIVATE DataSet1.
DESCRIPTIVES VARIABLES=warm
  /STATISTICS=MEAN STDDEV MIN MAX.


RECODE warm (8=SYSMIS) (ELSE=Copy) INTO warm_recoded.
EXECUTE.



* Recode attitudes towards climate change

DATASET ACTIVATE DataSet1.
DESCRIPTIVES VARIABLES=warm_recoded
  /STATISTICS=MEAN STDDEV MIN MAX.

* Recode Trump feeling variable

RECODE fttrump (998=SYSMIS) (ELSE=Copy)  INTO fttrump_recoded.
EXECUTE.


LOGISTIC REGRESSION VARIABLES warm_recoded
  /METHOD=ENTER fttrump_recoded gender
  /SAVE=PRED
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

GRAPH
  /SCATTERPLOT(BIVAR)=fttrump_recoded WITH PRE_1
  /MISSING=LISTWISE.

STRING gender_recoded (A8).
RECODE gender (2='Female') (1='Male') INTO gender_recoded.
EXECUTE.

LOGISTIC REGRESSION VARIABLES warm_recoded
  /METHOD=ENTER fttrump_recoded gender_recoded
  /SAVE=PRED
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

GRAPH
  /SCATTERPLOT(BIVAR)=fttrump_recoded WITH PRE_1
  /MISSING=LISTWISE.





* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=fttrump_recoded PRE_2 gender_recoded MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: fttrump_recoded=col(source(s), name("fttrump_recoded"))
  DATA: PRE_2=col(source(s), name("PRE_2"))
  DATA: gender_recoded=col(source(s), name("gender_recoded"), unit.category())
  GUIDE: axis(dim(1), label("fttrump_recoded"))
  GUIDE: axis(dim(2), label("Predicted probability"))
  GUIDE: legend(aesthetic(aesthetic.color.exterior), label("Gender"))
  ELEMENT: point(position(fttrump_recoded*PRE_2), color.exterior(gender_recoded))
END GPL.


* Recode Obama feeling variable

RECODE ftobama (998=SYSMIS) (ELSE=Copy)  INTO ftobama_recoded.
EXECUTE.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT fttrump_recoded 
  /METHOD=ENTER  gender ftobama_recoded
  /SAVE PRED SEPRED.





* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=ftobama_recoded PRE_3 gender MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: ftobama_recoded=col(source(s), name("ftobama_recoded"))
  DATA: PRE_3=col(source(s), name("PRE_3"))
  DATA: gender=col(source(s), name("gender"), unit.category())
  GUIDE: axis(dim(1), label("ftobama_recoded"))
  GUIDE: axis(dim(2), label("Unstandardized Predicted Value"))
  GUIDE: legend(aesthetic(aesthetic.color.exterior), label("gender"))
  ELEMENT: point(position(ftobama_recoded*PRE_3), color.exterior(gender))
END GPL.
