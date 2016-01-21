#Get corruption barometor data
# To what extent do you perceive the following sectors in this country to be affected by corruption?
# (1: not at all corrupt, 5: extremely corrupt) 

library(XML)
library(plyr)
library(XLConnect)
library(bitops)
library(RCurl)
library(foreign)
library(gdata)

#temp <- read.spss("C:\\Users\\Jason\\Desktop\\VOP TI3.SAV")
#head(temp)
cb2004 <- NULL
cb2005 <- NULL
cb2010 <- NULL

validYears <- c(2004, 2005, 2010)

for (i in 2004:2010) {
#skip useless years
  if (!(i %in% validYears)) next
  
#clear data
cbDATA <- NULL
  
#retrive raw data
  #Key URL
  if (i == 2004) theurl <- "http://archive.transparency.org/policy_research/surveys_indices/gcb/2004/press_release_gcb_2004"
  if (i == 2005) theurl <- "http://archive.transparency.org/content/download/5082/29846/file/gcb2005_fulltables_graphs_06_02_27.xls"
  if (i == 2010) theurl <- "http://files.transparency.org/content/download/398/1636/file/GCB20102011_FINAL_2_5_12_DH.xls"

  if(i==2004) {
    #HTML table in website
    tables <- readHTMLTable(theurl)
    n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))
    cbDATA <- tables[[which.max(n.rows)]] 
  }
  if (i > 2004) {
    ##XLS files
    if (i == 2005) cbDATA <- read.xls (theurl, sheet = "Table 9", header = TRUE)
    if (i == 2010) cbDATA <- read.xls (theurl, sheet = "1c", header = TRUE)
  }
  


  head(cbDATA)


#rename variables
  if (i ==2004) {
    cbDATA <- rename(cbDATA, c("V1" = "Country.Code", "V2" = "PoliticalParties", "V3" = "Parliament.Legislature", 
                               "V4" = "LegalSystem.Judiciary", "V5" = "Police", "V6" = "Business.PrivateSector",
                               "V7" = "TaxRevenue", "V8" = "Customs", "V9" = "Media", "V10" = "MedicalServices",
                               "V11" = "EducationSystem", "V12" = "RegistryAndPermitServices", "V13" = "Utilities",
                               "V14" = "Military", "V15" = "NGOs", "V16" = "ReligiousBodies"))
    cbDATA <- cbDATA[-1,] #removes top row
    cbDATA <- cbDATA[1:62,] #removes last two rows
  }
  if (i ==2005) {
    cbDATA <- rename(cbDATA, c("Table.9..National.institutions.and.sectors..corrupt.or.clean." = "country", "X" = "PoliticalParties", "X.1" = "Parliament.Legislature", 
                               "X.3" = "LegalSystem.Judiciary", "X.2" = "Police", "X.5" = "Business.PrivateSector",
                               "X.4" = "TaxRevenue", "X.6" = "Customs", "X.8" = "Media", "X.7" = "MedicalServices",
                               "X.9" = "EducationSystem", "X.11" = "RegistryAndPermitServices", "X.10" = "Utilities",
                               "X.12" = "Military", "X.13" = "NGOs", "X.14" = "ReligiousBodies"))
    cbDATA <- cbDATA[-1,] #removes top row
    cbDATA <- cbDATA[1:75,] #removes last row
    #remove grouping years
    cbDATA <- cbDATA[which(cbDATA$country != "ASIA - average" &
                           cbDATA$country != "AFRICA - average" &
                           cbDATA$country != "W.EUROPE - average" &
                           cbDATA$country != "CE EUROPE-average" &
                           cbDATA$country != "LAC - average" &
                           cbDATA$country != "Total"),]

  }

  if (i ==2010) {
    cbDATA <- cbDATA[-1,1:12]
    cbDATA <- cbDATA[-1,] 
    cbDATA <- cbDATA[-1,] #removes top three rows and trailing columns
    cbDATA <- rename(cbDATA, c("X" = "country", "X.1" = "PoliticalParties", "X.2" = "Parliament.Legislature", 
                               "X.7" = "LegalSystem.Judiciary", "X.3" = "Police", "X.4" = "Business.PrivateSector",
                               "X.5" = "Media", "X.6" = "PublicOfficials.CivilServants",
                               "X.11" = "EducationSystem", 
                               "X.10" = "Military", "X.8" = "NGOs", "X.9" = "ReligiousBodies"))
    cbDATA <- cbDATA[1:100,] #removes last row
  }


#reclass variables
    cbDATA <- as.data.frame(lapply(cbDATA, as.character), stringsAsFactors=FALSE)
    
    #common variables
    cbDATA$PoliticalParties <- lapply(cbDATA$PoliticalParties, as.numeric)
    cbDATA$Parliament.Legislature <- lapply(cbDATA$Parliament.Legislature, as.numeric)
    cbDATA$LegalSystem.Judiciary <- lapply(cbDATA$LegalSystem.Judiciary, as.numeric)
    cbDATA$Police <- lapply(cbDATA$Police, as.numeric)
    cbDATA$Business.PrivateSector <- lapply(cbDATA$Business.PrivateSector, as.numeric)
    cbDATA$Media <- lapply(cbDATA$Media, as.numeric)
    cbDATA$EducationSystem <- lapply(cbDATA$EducationSystem, as.numeric)
    cbDATA$Military <- lapply(cbDATA$Military, as.numeric)
    cbDATA$NGOs <- lapply(cbDATA$NGOs, as.numeric)
    cbDATA$ReligiousBodies <- lapply(cbDATA$ReligiousBodies, as.numeric)


    if ((i == 2004) | (i == 2005)) {
      cbDATA$TaxRevenue <- lapply(cbDATA$TaxRevenue, as.numeric)
      cbDATA$Customs <- lapply(cbDATA$Customs, as.numeric)
      cbDATA$MedicalServices <- lapply(cbDATA$MedicalServices, as.numeric)
      cbDATA$Utilities <- lapply(cbDATA$Utilities, as.numeric)
      cbDATA$RegistryAndPermitServices <- lapply(cbDATA$RegistryAndPermitServices, as.numeric)
      
    }
    
    
    if (i == 2010) {
      cbDATA$PublicOfficials.CivilServants <- lapply(cbDATA$PublicOfficials.CivilServants, as.numeric)
      cbDATA$country <- ifelse(cbDATA$country == "Azerbaijan*", "Azerbaijan", cbDATA$country) #rename azerbaijan
    }
#add year
    cbDATA$year <- i

#store
  dataname <- paste("cb", i, sep = "")
  assign(dataname, cbDATA)

}


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

###Add excel data
setwd("C:\\Users\\Jason\\Box Sync\\Current Projects\\Corruption and Growth\\Corruption Barometer")
cb2006 <- readWorksheet(loadWorkbook("CorruptionBarometer.xlsx"), 
                        sheet = "2006", header = TRUE)
cb2007 <- readWorksheet(loadWorkbook("CorruptionBarometer.xlsx"), 
                        sheet = "2007", header = TRUE)
cb2009 <- readWorksheet(loadWorkbook("CorruptionBarometer.xlsx"), 
                        sheet = "2009", header = TRUE)
cb2013 <- readWorksheet(loadWorkbook("CorruptionBarometer.xlsx"), 
                        sheet = "2013", header = TRUE)

#add years
cb2006$year <- 2006
cb2007$year <- 2007
cb2009$year <- 2009
cb2013$year <- 2013

###Apply cowcodes
source_https("https://raw.githubusercontent.com/jasonjensen/statsTools/master/Cowcodes/cowcodes.R")
cb2005 <- assignCowCodes(cb2005)
cb2006 <- assignCowCodes(cb2006)
cb2007 <- assignCowCodes(cb2007)
cb2009 <- assignCowCodes(cb2009)
cb2010 <- assignCowCodes(cb2010)
cb2013 <- assignCowCodes(cb2013)
head(cb2007[which(cb2007$cowcode == 0),], n=10)

#mergings
cbCombined <- rbind.fill(cb2005, cb2006)
cbCombined <- rbind.fill(cbCombined, cb2007)
cbCombined <- rbind.fill(cbCombined, cb2009)
cbCombined <- rbind.fill(cbCombined, cb2010)
cbCombined <- rbind.fill(cbCombined, cb2013)
cbCombined <- as.data.frame(cbCombined)

#fixing variable types
i = 2
while (i < 20) {
  if(class(cbCombined[,i][1]) == "list") {
    cbCombined[,i] <- as.numeric(lapply(cbCombined[,i], as.numeric))
  }
  else {
    cbCombined[,i] <- as.numeric(cbCombined[,i])  
  }
  
  i <- i + 1
}

#plot
#ggplot(cbCombined, aes(x = PoliticalParties,y = Business.PrivateSector)) + geom_point(aes(alpha = .5, size = 10))
write.csv(cbCombined, file="CorruptionBarometer.csv")

#NOTE: Still missing 2004
