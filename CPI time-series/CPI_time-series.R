#extracting CPI tables

library(XML)
library(plyr)
library(XLConnect)
library(bitops)
library(RCurl)

div10 <- function(x) x / 10

trim <- function (x) gsub("^\\s+|\\s+$", "", x)

i <- 1998
while(i  < 2014) {
  if(i==1998) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/previous_cpi/1998"}
  if(i==1999) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/previous_cpi/1999"}
  if(i==2000) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/previous_cpi/2000"}
  if(i==2001) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/2001"}
  if(i==2002) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/2002"}
  if(i==2003) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/2003"}
  if(i==2004) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/2004"}
  if(i==2005) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/2005"}
  if(i==2006) {theurl <- "http://archive.transparency.org/policy_research/surveys_indices/cpi/2006"}
  if(i==2007) {theurl <- "http://www.transparency.org/research/cpi/cpi_2007"}
  if(i==2008) {theurl <- "http://www.transparency.org/research/cpi/cpi_2008"}
  if(i==2009) {theurl <- "http://www.transparency.org/research/cpi/cpi_2009"}
  if(i==2010) {theurl <- "http://files.transparency.org/content/download/427/1756/CPI_2010.xml"}
  if (i < 2010) {
    tables <- readHTMLTable(theurl)
    n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))
    if (i != 2005) cpiDATA <- tables[[which.max(n.rows)]] 
  }
  if(i == 2005) cpiDATA <- tables[[2]]
  if(i == 2010) cpiDATA <- xmlToDataFrame(theurl)
  if(i == 2011) {
    cpiDATA <- NULL
    temp <- tempfile()
    download.file("http://files.transparency.org/content/download/313/1264/file/CPI2011_DataPackage.zip",temp)
    unzip(temp, list = TRUE)
    cpiDATA <- readWorksheet(loadWorkbook(unzip(temp, files="CPI2011_DataPackage/CPI2011_Results.xls")), 
                                            sheet = "Global", header = TRUE)
                        
    unlink(temp)
  }
  if(i == 2012) {
    cpiDATA <- NULL
    temp <- tempfile()
    download.file("http://files.transparency.org/content/download/533/2213/file/2012_CPI_DataPackage.zip",temp)
    unzip(temp, list = TRUE)
    cpiDATA <- readWorksheet(loadWorkbook(unzip(temp, files="2012_CPI_DataPackage/CPI2012_Results.xls")), 
                             sheet = "CPI 2012", header = TRUE)
    
    unlink(temp)
  }
  if(i == 2013) {
    cpiDATA <- NULL
    temp <- tempfile()
    download.file("http://files.transparency.org/content/download/702/3015/file/CPI2013_DataBundle.zip",temp)
    unzip(temp, list = TRUE)
    cpiDATA <- readWorksheet(loadWorkbook(unzip(temp, files="CPI2013_DataBundle/CPI2013_GLOBAL_WithDataSourceScores.xls")), 
                             sheet = "CPI 2013", header = TRUE)
    
    unlink(temp)
  }
  
  
  head(cpiDATA)
  
  if(i == 1998){
  cpiDATA <- rename(cpiDATA, c("  \nCountry Rank\n\n\n  "="rank", "  \nCountry\n\n\n  "="country", "  \n1998 CPI Score\n\n\n  "="score",
                               "  \nStandard Deviation\n\n\n  "="Std.Dev", "  \nSurveys Used\n\n\n  "="numSurveys"))
  }
  if (i == 1999) {
  cpiDATA <- rename(cpiDATA, c("CountryRank"="rank", "Country"="country", "1999 CPIScore"="score", 
                               "StandardDeviation"="Std.Dev", "SurveysUsed"="numSurveys"))
  }
  
  if (i == 2000) {
    cpiDATA <- rename(cpiDATA, c("V1"="rank", "V2"="country", "V3"="score", 
                                 "V5"="Std.Dev", "V4"="numSurveys"))
    cpiDATA <- cpiDATA[-1,]
    cpiDATA <- cpiDATA[-1,]
    cpiDATA$row.names <- NULL
  }
  
  if (i == 2001) {
    cpiDATA <- rename(cpiDATA, c("CountryRank"="rank", "Country"="country", "2001CPIScore"="score", 
                                 "StandardDeviation"="Std.Dev", "SurveysUsed"="numSurveys", 
                                 "High-LowRange"="V6"))
  }
  
  if (i == 2002) {
    cpiDATA <- rename(cpiDATA, c("CountryRank"="rank", "Country"="country", "CPI 2002 score"="score", 
                                  "Standard deviation"="Std.Dev", "Surveysused"="numSurveys", 
                                  "High-lowRange"="V6"))
  }
  
  if (i == 2003) {
    cpiDATA <- rename(cpiDATA, c("Country rank"="rank", "Country"="country", "CPI 2003 score"="score", 
                                 "Standard deviation"="Std.Dev", "Surveys used"="numSurveys", 
                                 "High-low range"="V6"))
  }
  if (i == 2004) {
    cpiDATA <- rename(cpiDATA, c("V1"="rank", "V2"="country", "V3"="score", 
                                 "V5"="numSurveys"))
    cpiDATA <- cpiDATA[-1,]
    cpiDATA$row.names <- NULL
  }
  
  if (i == 2005) {
    cpiDATA <- rename(cpiDATA, c("V1"="rank", "V2"="country", "V3"="score", 
                                 "V5"="numSurveys"))
    cpiDATA <- cpiDATA[-1,]
    cpiDATA$row.names <- NULL
  }
  
  if(i==2006) { 
    cpiDATA <- tables[[4]]
    vses <- colnames(cpiDATA)
    cpiDATA <- as.data.frame(rbind(vses, cpiDATA))
    cpiDATA <- rename(cpiDATA, c("1"="rank", "Finland"="country", "9.6"="score", 
                                 "7"="numSurveys", "9.4 - 9.7"="V6"))
    cpiDATA$country <- lapply(cpiDATA$country, as.character)
    cpiDATA$country[1] <- "Finland"
    cpiDATA$V6[1] <- "1.6 - 2.1"
    head(cpiDATA)
  }
  
  if (i == 2007) {
    cpiDATA <- rename(cpiDATA, c("Rank"="rank", "Country/Territory"="country", "CPI 2007 Score"="score", 
                                 "Surveys Used"="numSurveys", "Confidence Range" = "conf.int"))
  }
  if (i == 2008) {
    cpiDATA <- rename(cpiDATA, c("Rank"="rank", "Country/Territory"="country", "CPI 2008 Score"="score", 
                                 "Surveys Used"="numSurveys", "Confidence Range" = "conf.int"))
  }
  
  if (i == 2009) {
    cpiDATA <- rename(cpiDATA, c("Rank"="rank", "Country/Territory"="country", "CPI 2009 Score"="score", 
                                 "Surveys Used"="numSurveys", "Confidence Range" = "conf.int"))
  }
  
  if (i == 2010) {
    cpiDATA <- rename(cpiDATA, c("rank"="rank", "country"="country", "score"="score", 
                                 "surveys"="numSurveys", "confidenceRange" = "conf.int",
                                 "deviation" = "Std.Dev", "minRange" = "minRange", "maxRange" = "maxRange",
                                 "lowBound" = "lowBound", "hiBound" = "hiBound"))
  }
  
  if (i == 2011) {
    cpiDATA <- rename(cpiDATA, c("Country.Rank"="rank",  "Country...Territory"="country", "CPI.2011.Score"="score", 
                                 "Country.Rank.1" = "rank1",
                                 "Surveys.Used"="numSurveys", "Standard.Deviation" = "Std.Dev", 
                                 "Minimun.Maximum.Range" = "minRange", "Col8" = "maxRange",
                                 "X90...Confidence.Interval" = "lowBound", "Col10" = "hiBound"))
    cpiDATA$rank1 <- NULL
    cpiDATA$AFDB <- NULL
    cpiDATA$ADB <- NULL
    cpiDATA$BF_SGI <- NULL
    cpiDATA$BF_TI <- NULL
    cpiDATA$EIU_CRR <- NULL
    cpiDATA$FH_NIT <- NULL
    cpiDATA$GI_CRR <- NULL
    cpiDATA$IMD2010 <- NULL
    cpiDATA$IMD2011 <- NULL
    cpiDATA$PERC2010 <- NULL
    cpiDATA$PERC2011 <- NULL
    cpiDATA$PRS_ICRG <- NULL
    cpiDATA$TI_BPI <- NULL
    cpiDATA$WB_CPIA <- NULL
    cpiDATA$WEF2010 <- NULL
    cpiDATA$WEF2011 <- NULL
    cpiDATA$WJP_ROL <- NULL
    cpiDATA$Col28 <- NULL
    cpiDATA$Col29 <- NULL
    
    cpiDATA <- cpiDATA[-1,]
  }
  
  if (i == 2012) {
    cpiDATA <- rename(cpiDATA, c("Country.Rank"="rank",  "Country...Territory"="country", "CPI.2012.Score"="score", 
                                 "Surveys.Used"="numSurveys", "Standard.Error" = "Std.Dev", 
                                 "Scores.range" = "minRange", "Col11" = "maxRange",
                                 "X90..Confidence.interval" = "lowBound", "Col9" = "hiBound"))
    cpiDATA$Col3 <- NULL
    cpiDATA$Col5 <- NULL
    cpiDATA$Col12 <- NULL
    cpiDATA$Col13 <- NULL
    cpiDATA$Col14 <- NULL
    cpiDATA$Col15 <- NULL
    cpiDATA$Col16 <- NULL
    cpiDATA$Col17 <- NULL
    cpiDATA$Col18 <- NULL
    cpiDATA$Col19 <- NULL
    cpiDATA$Col20 <- NULL
    cpiDATA$Col21 <- NULL
    cpiDATA$Col22 <- NULL
    cpiDATA$Col23 <- NULL
    cpiDATA$Col24 <- NULL
    cpiDATA$Data.sources <- NULL
        
    cpiDATA <- cpiDATA[-1,]
  }
  
  if (i == 2013) {
    cpiDATA <- rename(cpiDATA, c("Country.Rank"="rank",  "Country...Territory"="country", "CPI.2013.Score"="score", 
                                 "Country.Rank.1" = "rank1",
                                 "Surveys.Used"="numSurveys", "Standard.Error" = "Std.Dev", 
                                 "Scores.range" = "minRange", "Col13" = "maxRange",
                                 "X90..Confidence.interval" = "lowBound", "Col11" = "hiBound"))
    cpiDATA$Col3 <- NULL
    cpiDATA$Col4 <- NULL
    cpiDATA$Col5 <- NULL
    cpiDATA$rank1 <- NULL
    cpiDATA$Col15 <- NULL
    cpiDATA$Col16 <- NULL
    cpiDATA$Col17 <- NULL
    cpiDATA$Col18 <- NULL
    cpiDATA$Col19 <- NULL
    cpiDATA$Col20 <- NULL
    cpiDATA$Col21 <- NULL
    cpiDATA$Col22 <- NULL
    cpiDATA$Col23 <- NULL
    cpiDATA$Col24 <- NULL
    cpiDATA$Col25 <- NULL
    cpiDATA$Col26 <- NULL
    cpiDATA$Data.sources <- NULL
    
    cpiDATA <- cpiDATA[-1,]
  }
  
  
  if(i<2000){   needsShift  <- is.na(cpiDATA$numSurveys) }
  if(i>=2000 & i < 2004){  needsShift  <- is.na(cpiDATA$V6) }
  if(i>=2004){   needsShift  <- is.na(cpiDATA$numSurveys) }
  #str(needsShift)
  
  #convert to string
  if (i < 2011) cpiDATA <- data.frame(lapply(cpiDATA, as.character), stringsAsFactors=FALSE)
  
  #shift values 
  if(i < 2000) {
    cpiDATA$numSurveys <- ifelse(needsShift, as.numeric(as.character(cpiDATA$Std.Dev)), as.numeric(as.character(cpiDATA$numSurveys)))
    cpiDATA$Std.Dev <- ifelse(needsShift, as.numeric(as.character(cpiDATA$score)), as.numeric(as.character(cpiDATA$Std.Dev)))
    cpiDATA$score <- ifelse(needsShift, as.numeric(as.character(cpiDATA$country)), as.numeric(as.character(cpiDATA$score)))
    cpiDATA$country <- ifelse(needsShift, cpiDATA$rank, cpiDATA$country)
  }
  if(i >= 2000 & i < 2004) {
    cpiDATA$Std.Dev <- ifelse(needsShift, as.numeric(as.character(cpiDATA$numSurveys)), as.numeric(as.character(cpiDATA$Std.Dev)))
    cpiDATA$numSurveys <- ifelse(needsShift, as.numeric(as.character(cpiDATA$score)), as.numeric(as.character(cpiDATA$numSurveys)))
    cpiDATA$score <- ifelse(needsShift, as.numeric(as.character(cpiDATA$country)), as.numeric(as.character(cpiDATA$score)))
    cpiDATA$country <- ifelse(needsShift, cpiDATA$rank, cpiDATA$country)
    cpiDATA$V6 <- NULL
  }
  if(i >= 2004 & i < 2006) {
    cpiDATA$numSurveys <- ifelse(needsShift, as.numeric(as.character(cpiDATA$V4)), as.numeric(as.character(cpiDATA$numSurveys)))
    cpiDATA$score <- ifelse(needsShift, as.numeric(as.character(sub(",", ".", cpiDATA$country, fixed = TRUE))), as.numeric(as.character(sub(",", ".", cpiDATA$score, fixed = TRUE))))
    cpiDATA$country <- ifelse(needsShift, cpiDATA$rank, cpiDATA$country)
    cpiDATA$V4 <- NULL
  }
  if(i == 2006) {
    cpiDATA$numSurveys <- as.numeric(as.character(cpiDATA$numSurveys))
    cpiDATA$score <- as.numeric(as.character(cpiDATA$score))
    cpiDATA$rank <- as.numeric(as.character(cpiDATA$rank))
    cpiDATA$V6 <- NULL
  }
  if(i >= 2007 & i < 2010) {
    cpiDATA$numSurveys <- as.numeric(as.character(cpiDATA$numSurveys))
    cpiDATA$score <- as.numeric(as.character(cpiDATA$score))
    cpiDATA$rank <- as.numeric(as.character(cpiDATA$rank))
    cpiDATA$country <- sapply(cpiDATA$country, as.character)
    cpiDATA$conf.int <- sapply(cpiDATA$conf.int, as.character)
  }
  if(i == 2010) {
    cpiDATA$numSurveys <- as.numeric(as.character(cpiDATA$numSurveys))
    cpiDATA$score <- as.numeric(as.character(cpiDATA$score))
    cpiDATA$rank <- as.numeric(as.character(cpiDATA$rank))
    cpiDATA$Std.Dev <- as.numeric(as.character(cpiDATA$Std.Dev))
    cpiDATA$minRange <- as.numeric(as.character(cpiDATA$minRange))
    cpiDATA$maxRange <- as.numeric(as.character(cpiDATA$maxRange))
    cpiDATA$lowBound <- as.numeric(as.character(cpiDATA$lowBound))
    cpiDATA$hiBound <- as.numeric(as.character(cpiDATA$hiBound))
    cpiDATA$country <- sapply(cpiDATA$country, as.character)
    cpiDATA$country <- sapply(cpiDATA$country, trim)
    cpiDATA$conf.int <- sapply(cpiDATA$conf.int, as.character)
  }
  if(i == 2011) {
    cpiDATA$minRange <- as.numeric(as.character(cpiDATA$minRange))
    cpiDATA$maxRange <- as.numeric(as.character(cpiDATA$maxRange))
    cpiDATA$lowBound <- as.numeric(as.character(cpiDATA$lowBound))
    cpiDATA$hiBound <- as.numeric(as.character(cpiDATA$hiBound))
  }
  if(i >= 2012) {
    cpiDATA$minRange <- as.numeric(as.character(cpiDATA$minRange))
    cpiDATA$maxRange <- as.numeric(as.character(cpiDATA$maxRange))
    cpiDATA$lowBound <- as.numeric(as.character(cpiDATA$lowBound))
    cpiDATA$hiBound <- as.numeric(as.character(cpiDATA$hiBound))
    cpiDATA$score <- sapply(cpiDATA$score, div10 )
    cpiDATA$minRange <- sapply(cpiDATA$minRange, div10 )
    cpiDATA$maxRange <- sapply(cpiDATA$maxRange, div10 )
    cpiDATA$lowBound <- sapply(cpiDATA$lowBound, div10 )
    cpiDATA$hiBound <- sapply(cpiDATA$hiBound, div10 )
  }
    
  cpiDATA$year <- i
  cpiDATA$rank <- NULL
  dataname <- paste("cpi", i, sep = "")
  assign(dataname, cpiDATA)
  cpiDATA <- NULL
  if(i==1998) {head(cpi1998, n = 10)}
  if(i==1999) {head(cpi1999, n = 10)}
  if(i==2000) {head(cpi2000, n = 10)}
  if(i==2001) {head(cpi2001, n = 10)}
  if(i==2002) {head(cpi2002, n = 10)}
  if(i==2003) {head(cpi2003, n = 10)}
  if(i==2004) {head(cpi2004, n = 10)}
  if(i==2005) {head(cpi2005, n = 10)}
  if(i==2006) {head(cpi2006, n = 10)}
  if(i==2007) {head(cpi2007, n = 10)}
  if(i==2008) {head(cpi2008, n = 10)}
  if(i==2009) {head(cpi2009, n = 10)}
  if(i==2010) {head(cpi2010, n = 10)}
  if(i==2011) {head(cpi2011, n = 10)}
  if(i==2012) {head(cpi2012, n = 10)}
  if(i==2013) {head(cpi2013, n = 10)}
   
  i <- i + 1
}





#Merge data sets
cpiTimeSeries <- rbind.fill(cpi1998, cpi1999, cpi2000, cpi2001, cpi2002, cpi2003, 
                      cpi2004, cpi2005, cpi2006, cpi2007, cpi2008, cpi2009, 
                      cpi2010, cpi2011, cpi2012, cpi2013)




##SCRIPT FOR USING EXTERNAL SCRIPTS
##from: http://www.r-bloggers.com/source_https-sourcing-an-r-script-from-github-over-https/
source_https <- function(url, ...) {
  # load package
  require(RCurl)
  
  # parse and evaluate each .R script
  sapply(c(url, ...), function(u) {
    eval(parse(text = getURL(u, followlocation = TRUE, cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))), envir = .GlobalEnv)
  })
}

###Apply cowcodes
source_https("https://raw.githubusercontent.com/jasonjensen/statsTools/master/Cowcodes/cowcodes.R")

cpiTimeSeries <- assignCowCodes(cpiTimeSeries)

cleanup
i <- 1998
while (i < 2014) {
  dataname <- paste("cpi", i, sep = "")
  assign(dataname, NULL)
  i <- i + 1
}
data <- NULL

head(cpiTimeSeries)

