###Mainscript for analysis of McKenzie GENEActiv Accelerometry data

rm(list = ls())

library(GGIR)

g.shell.GGIR(  ## everything not specified in shell function will execute as default
  mode=c(1,2,3,4,5),                 ## which parts of GGIR to run 
  datadir="McKenzie_data",           ## specify where you stored the data
  outputdir="McKenzie_results",      ## specify where the results should go
  do.report=c(2,4,5),
  #=====================
  # Part 2
  #=====================
  #strategy relates to study protocol (start and end). As we don't know when 
  #exactly the participants started wearing, use strategy = 3 which will select 
  #the x most active days (x specified in ndayswindow)
  strategy = 3, 
  #hrs.del.start = 0,          hrs.del.end = 0,
  ndayswindow = 29,
  # max number of days set to 29; 30 does not work? 
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

