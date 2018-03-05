﻿* Encoding: UTF-8.
 
* read data 

PRESERVE.
SET DECIMAL DOT.

GET DATA  /TYPE=TXT
  /FILE="/Users/stefan/Library/Mobile Documents/com~apple~CloudDocs/Downloads/ANES 2016 pilot.csv"
  /ENCODING='UTF8'
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /DATATYPEMIN PERCENTAGE=95.0
  /VARIABLES=
  version AUTO
  caseid AUTO
  weight AUTO
  weight_spss AUTO
  follow AUTO
  turnout12 AUTO
  turnout12b AUTO
  vote12 AUTO
  percent16 AUTO
  meet AUTO
  givefut AUTO
  info AUTO
  march AUTO
  sign AUTO
  give12mo AUTO
  compromise AUTO
  ftobama AUTO
  ftblack AUTO
  ftwhite AUTO
  fthisp AUTO
  ftgay AUTO
  ftjeb AUTO
  fttrump AUTO
  ftcarson AUTO
  fthrc AUTO
  ftrubio AUTO
  ftcruz AUTO
  ftsanders AUTO
  ftfiorina AUTO
  ftpolice AUTO
  ftfem AUTO
  fttrans AUTO
  ftmuslim AUTO
  ftsci AUTO
  reg AUTO
  demcand AUTO
  repcand AUTO
  vote16jb AUTO
  vote16bc AUTO
  vote16tc AUTO
  vote16mr AUTO
  vote16dt AUTO
  presjob AUTO
  lazyb AUTO
  lazyw AUTO
  lazyh AUTO
  lazym AUTO
  violentb AUTO
  violentw AUTO
  violenth AUTO
  violentm AUTO
  econnow AUTO
  econ12mo AUTO
  pid1d AUTO
  pid2d AUTO
  pid1r AUTO
  pid2r AUTO
  pidstr AUTO
  pidlean AUTO
  lcself AUTO
  lcd AUTO
  lcr AUTO
  lchc AUTO
  lcbo AUTO
  lcdt AUTO
  lcmr AUTO
  lctc AUTO
  ISSUES_OC14_1 AUTO
  ISSUES_OC14_2 AUTO
  ISSUES_OC14_3 AUTO
  ISSUES_OC14_4 AUTO
  ISSUES_OC14_5 AUTO
  ISSUES_OC14_6 AUTO
  ISSUES_OC14_7 AUTO
  ISSUES_OC14_8 AUTO
  ISSUES_OC14_9 AUTO
  ISSUES_OC14_10 AUTO
  ISSUES_OC14_11 AUTO
  ISSUES_OC14_12 AUTO
  ISSUES_OC14_13 AUTO
  ISSUES_OC14_14 AUTO
  ISSUES_OC14_15 AUTO
  ISSUES_OC14_16 AUTO
  ISSUES_OC14_17 AUTO
  ISSUES_OC14_18 AUTO
  ISSUES_OC14_19 AUTO
  ISSUES_OC14_20 AUTO
  ISSUES_OC14_21 AUTO
  best1 AUTO
  best2 AUTO
  best3 AUTO
  best4 AUTO
  disc_b AUTO
  disc_h AUTO
  disc_w AUTO
  disc_g AUTO
  disc_wo AUTO
  disc_m AUTO
  disc_t AUTO
  disc_mu AUTO
  disc_c AUTO
  disc_selfsex AUTO
  disc_fed AUTO
  disc_police AUTO
  srv_spend AUTO
  campfin AUTO
  immig_legal AUTO
  immig_numb AUTO
  equalpay AUTO
  parleave AUTO
  crimespend AUTO
  death AUTO
  terror_worry AUTO
  terror_12mo AUTO
  terror_local AUTO
  relig_bc AUTO
  relig_bcstr AUTO
  relig_srv AUTO
  relig_srvstr AUTO
  incgap20 AUTO
  isis_troops AUTO
  syrians_a AUTO
  syrians_b AUTO
  pc_a AUTO
  pc_b AUTO
  minwage AUTO
  healthspend AUTO
  childcare AUTO
  getahead AUTO
  ladder AUTO
  finwell AUTO
  rr1 AUTO
  rr2 AUTO
  rr3 AUTO
  rr4 AUTO
  warm AUTO
  warmbad AUTO
  warmcause AUTO
  warmdo AUTO
  aa1 AUTO
  aa2 AUTO
  aa3 AUTO
  freetrade AUTO
  stopwhite AUTO
  stopblack AUTO
  forcewhite AUTO
  forceblack AUTO
  stop_12mo AUTO
  arrested_12mo AUTO
  charged_12mo AUTO
  jailed_12mo AUTO
  convict_12mo AUTO
  famstop_12mo AUTO
  stop_ever AUTO
  arrested_ever AUTO
  charged_ever AUTO
  jailed_ever AUTO
  convict_ever AUTO
  famstop_ever AUTO
  pk_deficit AUTO
  pk_sen AUTO
  pk_spend AUTO
  birthright_a AUTO
  birthright_b AUTO
  femoff_jobs AUTO
  femoff_ed AUTO
  femoff_spend AUTO
  femoff_issues AUTO
  lpres_pleased AUTO
  lpres_immig AUTO
  lpres_la AUTO
  vaccine AUTO
  autism AUTO
  bo_muslim AUTO
  bo_confid AUTO
  NFC1 AUTO
  NFC10 AUTO
  NFC15 AUTO
  NFC21 AUTO
  NFC23 AUTO
  NFC24 AUTO
  NFC29 AUTO
  NFC32 AUTO
  NFC40 AUTO
  NTE1 AUTO
  NTE3 AUTO
  NTE9 AUTO
  NTE10 AUTO
  NTE11 AUTO
  NTE12 AUTO
  amer_ident AUTO
  race_ident AUTO
  wad1a AUTO
  wad2a AUTO
  wad3a AUTO
  wad4a AUTO
  wad1b AUTO
  wad2b AUTO
  wad3b AUTO
  wad4b AUTO
  whitework AUTO
  whitejob AUTO
  wguilt1 AUTO
  wguilt2 AUTO
  wguilt3 AUTO
  buycott AUTO
  boycott AUTO
  skintone_mob AUTO
  skintone AUTO
  skin_discrim AUTO
  africanam10_1 AUTO
  white10_1 AUTO
  hispanic10_1 AUTO
  asianam10_1 AUTO
  nativeam10_1 AUTO
  other10_1 AUTO
  other10_open AUTO
  birthyr AUTO
  gender AUTO
  race AUTO
  race_other AUTO
  educ AUTO
  marstat AUTO
  speakspanish AUTO
  employ AUTO
  employ_t AUTO
  faminc AUTO
  faminc2 AUTO
  state AUTO
  votereg AUTO
  pid3 AUTO
  pid7 AUTO
  ideo5 AUTO
  newsint AUTO
  pew_bornagain AUTO
  pew_churatd AUTO
  religpew AUTO
  religpew_t AUTO
  page_page_follow_timing AUTO
  page_page_turnout12_timing AUTO
  page_page_vote12_timing AUTO
  page_page_percent16_timing AUTO
  page_page_meet_timing AUTO
  page_page_givefut_timing AUTO
  page_page_info_timing AUTO
  page_page_march_timing AUTO
  page_page_sign_timing AUTO
  page_page_give12mo_timing AUTO
  page_page_compromise_timing AUTO
  page_page_ftobama_timing AUTO
  page_page_ftblack_timing AUTO
  page_page_ftwhite_timing AUTO
  page_page_fthisp_timing AUTO
  page_page_ftgay_timing AUTO
  page_page_ftjeb_timing AUTO
  page_page_fttrump_timing AUTO
  page_page_ftcarson_timing AUTO
  page_page_fthrc_timing AUTO
  page_page_ftrubio_timing AUTO
  page_page_ftcruz_timing AUTO
  page_page_ftsanders_timing AUTO
  page_page_ftfiorina_timing AUTO
  page_page_ftpolice_timing AUTO
  page_page_ftfem_timing AUTO
  page_page_fttrans_timing AUTO
  page_page_ftmuslim_timing AUTO
  page_page_ftsci_timing AUTO
  page_page_reg_timing AUTO
  page_page_demcand_timing AUTO
  page_page_repcand_timing AUTO
  page_page_vote16jb_timing AUTO
  page_page_vote16bc_timing AUTO
  page_page_vote16tc_timing AUTO
  page_page_vote16mr_timing AUTO
  page_page_vote16dt_timing AUTO
  page_page_presjob_timing AUTO
  page_page_lazy_timing AUTO
  page_page_violent_timing AUTO
  page_page_econ_grid_timing AUTO
  page_page_pid1d_timing AUTO
  page_page_pid1r_timing AUTO
  page_page_pidstr_timing AUTO
  page_page_pidlean_timing AUTO
  page_page_lc_grid_timing AUTO
  page_page_ISSUES_OC14_timing AUTO
  page_page_GRID_best4_timing AUTO
  page_page_disc_timing AUTO
  page_page_disc_selfsex_timing AUTO
  page_page_disc_fed_timing AUTO
  page_page_disc_police_timing AUTO
  page_page_srv_spend_timing AUTO
  page_page_campfin_timing AUTO
  page_page_immig_legal_timing AUTO
  page_page_immig_numb_timing AUTO
  page_page_equalpay_timing AUTO
  page_page_parleave_timing AUTO
  page_page_crimespend_timing AUTO
  page_page_death_timing AUTO
  page_page_terror_worry_timing AUTO
  page_page_terror_12mo_timing AUTO
  page_page_terror_local_timing AUTO
  page_page_relig_bc_timing AUTO
  page_page_relig_srv_timing AUTO
  page_page_incgap20_timing AUTO
  page_page_isis_troops_timing AUTO
  page_page_syrians_a_timing AUTO
  page_page_syrians_b_timing AUTO
  page_page_pc_a_timing AUTO
  page_page_pc_b_timing AUTO
  page_page_minwage_timing AUTO
  page_page_healthspend_timing AUTO
  page_page_childcare_timing AUTO
  page_page_getahead_timing AUTO
  page_page_ladder_timing AUTO
  page_page_finwell_timing AUTO
  page_page_rr_grid_timing AUTO
  page_page_warm_timing AUTO
  page_page_warmbad_timing AUTO
  page_page_warmcause_timing AUTO
  page_page_warmdo_timing AUTO
  page_page_aa1_timing AUTO
  page_page_aa2_timing AUTO
  page_page_aa3_timing AUTO
  page_page_freetrade_timing AUTO
  page_page_stopwhite_timing AUTO
  page_page_stopblack_timing AUTO
  page_page_forcewhite_timing AUTO
  page_page_forceblack_timing AUTO
  page_page_12mo_grid_timing AUTO
  page_page_ever_grid_timing AUTO
  page_page_pk_deficit_timing AUTO
  page_page_pk_sen_timing AUTO
  page_page_pk_spend_timing AUTO
  page_page_birthright_a_timing AUTO
  page_page_birthright_b_timing AUTO
  page_page_femoff_jobs_timing AUTO
  page_page_femoff_ed_timing AUTO
  page_page_femoff_spend_timing AUTO
  page_page_femoff_issues_timing AUTO
  page_page_lpres_pleased_timing AUTO
  page_page_lpres_immig_timing AUTO
  page_page_lpres_la_timing AUTO
  page_page_vaccine_timing AUTO
  page_page_autism_timing AUTO
  page_page_bo_muslim_timing AUTO
  page_NFC_page1_timing AUTO
  page_NFC_page2_timing AUTO
  page_NFC_page3_timing AUTO
  page_NFC_page4_timing AUTO
  page_NTE_page1_timing AUTO
  page_NTE_page2_timing AUTO
  page_NTE_page3_timing AUTO
  page_NTE_page4_timing AUTO
  page_page_amer_ident_timing AUTO
  page_page_race_ident_timing AUTO
  page_page_wad1a_timing AUTO
  page_page_wad2a_timing AUTO
  page_page_wad3a_timing AUTO
  page_page_wad4a_timing AUTO
  page_page_wad1b_timing AUTO
  page_page_wad2b_timing AUTO
  page_page_wad3b_timing AUTO
  page_page_wad4b_timing AUTO
  page_page_whitework_timing AUTO
  page_page_whitejob_timing AUTO
  page_page_wguilt1_timing AUTO
  page_page_wguilt2_timing AUTO
  page_page_wguilt3_timing AUTO
  page_page_buycott_timing AUTO
  page_page_boycott_timing AUTO
  page_page_skintone_mob_timing AUTO
  page_page_skintone_grid_timing AUTO
  page_page_skin_discrim_timing AUTO
  page_pagerace10_timing AUTO
  disc_fed_disc_police_rnd AUTO
  white_sections_rnd AUTO
  lazy_violent_rnd AUTO
  FEELING_THERMOMETER_rnd AUTO
  meet_rnd AUTO
  givefut_rnd AUTO
  info_rnd AUTO
  ISSUES_OC14_rnd AUTO
  disc_selfsex_rnd AUTO
  lazy_col_rnd AUTO
  lazy_row_rnd AUTO
  violent_col_rnd AUTO
  violent_row_rnd AUTO
  LCORDER AUTO
  discrand AUTO
  XORDER1 AUTO
  RAND_VOTE AUTO
  pidrand AUTO
  RAND_TERROR AUTO
  RAND_ISIS AUTO
  RAND_PC AUTO
  aa_split AUTO
  ever_vs_12mo_rand AUTO
  RAND_BIRTH AUTO
  RAND_FEMOFF AUTO
  RAND_LPRES AUTO
  RAND_WAD AUTO
  RAND_OC4 AUTO
  flag_follow AUTO
  flag_turnout12 AUTO
  flag_turnout12b AUTO
  flag_vote12 AUTO
  flag_percent16 AUTO
  flag_meet AUTO
  flag_givefut AUTO
  flag_info AUTO
  flag_march AUTO
  flag_sign AUTO
  flag_give12mo AUTO
  flag_compromise AUTO
  flag_ftobama AUTO
  flag_ftblack AUTO
  flag_ftwhite AUTO
  flag_fthisp AUTO
  flag_ftgay AUTO
  flag_ftjeb AUTO
  flag_fttrump AUTO
  flag_ftcarson AUTO
  flag_fthrc AUTO
  flag_ftrubio AUTO
  flag_ftcruz AUTO
  flag_ftsanders AUTO
  flag_ftfiorina AUTO
  flag_ftpolice AUTO
  flag_ftfem AUTO
  flag_fttrans AUTO
  flag_ftmuslim AUTO
  flag_ftsci AUTO
  flag_reg AUTO
  flag_demcand AUTO
  flag_repcand AUTO
  flag_vote16jb AUTO
  flag_vote16bc AUTO
  flag_vote16tc AUTO
  flag_vote16mr AUTO
  flag_vote16dt AUTO
  flag_presjob AUTO
  flag_lazyb AUTO
  flag_lazyw AUTO
  flag_lazyh AUTO
  flag_lazym AUTO
  flag_violentb AUTO
  flag_violentw AUTO
  flag_violenth AUTO
  flag_violentm AUTO
  flag_econnow AUTO
  flag_econ12mo AUTO
  flag_pid1d AUTO
  flag_pid2d AUTO
  flag_pid1r AUTO
  flag_pid2r AUTO
  flag_pidstr AUTO
  flag_pidlean AUTO
  flag_lcself AUTO
  flag_lcd AUTO
  flag_lcr AUTO
  flag_lchc AUTO
  flag_lcbo AUTO
  flag_lcdt AUTO
  flag_lcmr AUTO
  flag_lctc AUTO
  flag_ISSUES_OC14 AUTO
  flag_best1 AUTO
  flag_best2 AUTO
  flag_best3 AUTO
  flag_best4 AUTO
  flag_disc_b AUTO
  flag_disc_h AUTO
  flag_disc_w AUTO
  flag_disc_g AUTO
  flag_disc_wo AUTO
  flag_disc_m AUTO
  flag_disc_t AUTO
  flag_disc_mu AUTO
  flag_disc_c AUTO
  flag_disc_selfsex AUTO
  flag_disc_fed AUTO
  flag_disc_police AUTO
  flag_srv_spend AUTO
  flag_campfin AUTO
  flag_immig_legal AUTO
  flag_immig_numb AUTO
  flag_equalpay AUTO
  flag_parleave AUTO
  flag_crimespend AUTO
  flag_death AUTO
  flag_terror_worry AUTO
  flag_terror_12mo AUTO
  flag_terror_local AUTO
  flag_relig_bc AUTO
  flag_relig_bcstr AUTO
  flag_relig_srv AUTO
  flag_relig_srvstr AUTO
  flag_incgap20 AUTO
  flag_isis_troops AUTO
  flag_syrians_a AUTO
  flag_syrians_b AUTO
  flag_pc_a AUTO
  flag_pc_b AUTO
  flag_minwage AUTO
  flag_healthspend AUTO
  flag_childcare AUTO
  flag_getahead AUTO
  flag_ladder AUTO
  flag_finwell AUTO
  flag_rr1 AUTO
  flag_rr2 AUTO
  flag_rr3 AUTO
  flag_rr4 AUTO
  flag_warm AUTO
  flag_warmbad AUTO
  flag_warmcause AUTO
  flag_warmdo AUTO
  flag_aa1 AUTO
  flag_aa2 AUTO
  flag_aa3 AUTO
  flag_freetrade AUTO
  flag_stopwhite AUTO
  flag_stopblack AUTO
  flag_forcewhite AUTO
  flag_forceblack AUTO
  flag_stop_12mo AUTO
  flag_arrested_12mo AUTO
  flag_charged_12mo AUTO
  flag_jailed_12mo AUTO
  flag_convict_12mo AUTO
  flag_famstop_12mo AUTO
  flag_stop_ever AUTO
  flag_arrested_ever AUTO
  flag_charged_ever AUTO
  flag_jailed_ever AUTO
  flag_convict_ever AUTO
  flag_famstop_ever AUTO
  flag_pk_deficit AUTO
  flag_pk_sen AUTO
  flag_pk_spend AUTO
  flag_birthright_a AUTO
  flag_birthright_b AUTO
  flag_femoff_jobs AUTO
  flag_femoff_ed AUTO
  flag_femoff_spend AUTO
  flag_femoff_issues AUTO
  flag_lpres_pleased AUTO
  flag_lpres_immig AUTO
  flag_lpres_la AUTO
  flag_vaccine AUTO
  flag_autism AUTO
  flag_bo_muslim AUTO
  flag_bo_confid AUTO
  flag_NFC_q1 AUTO
  flag_NFC_q2 AUTO
  flag_NFC_q3 AUTO
  flag_NFC_q4 AUTO
  flag_NTE_q1 AUTO
  flag_NTE_q2 AUTO
  flag_NTE_q3 AUTO
  flag_NTE_q4 AUTO
  flag_amer_ident AUTO
  flag_race_ident AUTO
  flag_wad1a AUTO
  flag_wad2a AUTO
  flag_wad3a AUTO
  flag_wad4a AUTO
  flag_wad1b AUTO
  flag_wad2b AUTO
  flag_wad3b AUTO
  flag_wad4b AUTO
  flag_whitework AUTO
  flag_whitejob AUTO
  flag_wguilt1 AUTO
  flag_wguilt2 AUTO
  flag_wguilt3 AUTO
  flag_buycott AUTO
  flag_boycott AUTO
  flag_skintone_mob AUTO
  flag_skintone_grid AUTO
  flag_skin_discrim AUTO
  flag_africanam10 AUTO
  flag_white10 AUTO
  flag_hispanic10 AUTO
  flag_asianam10 AUTO
  flag_nativeam10 AUTO
  flag_other10 AUTO
  starttime AUTO
  endtime AUTO
  optintimestamp AUTO
  count AUTO
  ua AUTO
  browser AUTO
  os AUTO
  /MAP.
RESTORE.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

* summary statistics

DATASET ACTIVATE DataSet1.
DESCRIPTIVES VARIABLES=ftobama pid1d educ gender
  /STATISTICS=MEAN STDDEV MIN MAX.

* recode ftobama missing values

RECODE ftobama (998=SYSMIS).
EXECUTE.

* recode pid1d 

RECODE pid1d (1=1) (9=SYSMIS) (2 thru 4=0) INTO piddem.
VARIABLE LABELS  piddem 'Party identification (Democrat)'.
EXECUTE.

* run regression model

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ftobama
  /METHOD=ENTER piddem gender educ.


* get variable for interaction effect

COMPUTE piddemXgender=piddem  * gender.
EXECUTE.

* run regression model

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ftobama
  /METHOD=ENTER piddem gender educ piddemXgender.



