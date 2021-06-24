###Mainscript for analysis of McKenzie GENEActiv data

rm(list = ls())

library(GGIR)

g.shell.GGIR(  ## everything not specified in shelll function will execute as default
  mode=c(1,2,3,4,5),
  datadir="McKenzie_data",
  outputdir="McKenzie_results",
  do.report=c(2,4,5),
  #=====================
  # Part 2
  #=====================
  #strategy around what data to select for imputation
  strategy = 1, 
  hrs.del.start = 0,          hrs.del.end = 0,
  
  # for testing purposes, just use 29 days. It does not seem to work for more!
  maxdur = 29,                 includedaycrit = 16,
  qwindow=c(0,24),
  mvpathreshold =c(100),
  bout.metric = 4,
  excludefirstlast = FALSE,
  includenightcrit = 16,
  #=====================
  # Part 3 + 4
  #=====================
  def.noc.sleep = 1,
  outliers.only = TRUE,
  criterror = 4,
  do.visual = TRUE,
  #=====================
  # Part 5
  #=====================
  threshold.lig = c(30), threshold.mod = c(100),  threshold.vig = c(400),
  boutcriter = 0.8,      boutcriter.in = 0.9,     boutcriter.lig = 0.8,
  boutcriter.mvpa = 0.8, boutdur.in = c(1,10,30), boutdur.lig = c(1,10),
  boutdur.mvpa = c(1),
  includedaycrit.part5 = 2/3,
  #=====================
  # Visual report
  #=====================
  timewindow = c("WW"),
  visualreport=TRUE)

