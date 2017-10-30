* Encoding: UTF-8.

PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="/Users/stefan/Downloads/2014_CHES_dataset_means.csv"
  /ENCODING='UTF8'
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  country AUTO
  cname AUTO
  party_id AUTO
  party_name AUTO
  eu_position AUTO
  eu_position_sd AUTO
  eu_salience AUTO
  eu_dissent AUTO
  eu_benefit AUTO
  eu_ep AUTO
  eu_intmark AUTO
  eu_cohesion AUTO
  eu_foreign AUTO
  eu_turkey AUTO
  eu_budgets AUTO
  lrgen AUTO
  lrgen_sd AUTO
  lrecon AUTO
  lrecon_salience AUTO
  lrecon_sd AUTO
  galtan AUTO
  galtan_salience AUTO
  galtan_sd AUTO
  spendvtax AUTO
  deregulation AUTO
  redistribution AUTO
  econ_interven AUTO
  civlib_laworder AUTO
  sociallifestyle AUTO
  religious_principle AUTO
  immigrate_policy AUTO
  multiculturalism AUTO
  urban_rural AUTO
  environment AUTO
  regions AUTO
  international_security AUTO
  ethnic_minorities AUTO
  nationalism AUTO
  antielite_salience AUTO
  corrupt_salience AUTO
  mip_one AUTO
  mip_two AUTO
  mip_three AUTO
  /MAP.
RESTORE.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.


* Format lrgen and eu_position to 2 decimals

FORMATS eu_position (F5.2).
 
FORMATS lrgen (F5.2).

* Plot histogram of lrgen

DATASET ACTIVATE DataSet1.
GRAPH
  /HISTOGRAM(NORMAL)=lrgen
  /TITLE='Histogram of left-right expert placements'.


* Plot scatterplot of lrgen and eu_position

GRAPH
  /SCATTERPLOT(BIVAR)=lrgen WITH eu_position
  /MISSING=LISTWISE.


* Filter only Irish observations

USE ALL.
COMPUTE filter_$=(cname = "ire").
VARIABLE LABELS filter_$ 'cname = "ire" (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

* Scatterplot of lrgen and eu_position for Irish parties

GRAPH
  /SCATTERPLOT(BIVAR)=lrgen WITH eu_position
  /MISSING=LISTWISE.


* Same plot, this time with labels for party names

* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=lrgen eu_position party_name MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: lrgen=col(source(s), name("lrgen"))
  DATA: eu_position=col(source(s), name("eu_position"))
  DATA: party_name=col(source(s), name("party_name"), unit.category())
  GUIDE: axis(dim(1), label("lrgen"))
  GUIDE: axis(dim(2), label("eu_position"))
  GUIDE: legend(aesthetic(aesthetic.color.exterior), label("party_name"))
  ELEMENT: point(position(lrgen*eu_position), color.exterior(party_name), label(party_name))
END GPL.
