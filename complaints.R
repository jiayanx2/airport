dataq1 <- read_excel("/Users/yynpy/Desktop/ccrb_datatransparencyinitiative_20170207.xlsx",sheet='Complaints_Allegations')
newdataq1 <- na.omit(dataq1)
library(plyr)
count(newdataq1$UniqueComplaintId)
#
b <- duplicated(newdataq1$UniqueComplaintId)
c <- newdataq1[!b,]
c=c[c$'Borough of Occurrence'!='NA',]
c=c[c$'Incident Location'!='NA',]
c=c[c$'Encounter Outcome'!='Other/NA',]
c=c[c$'Reason For Initial Contact'!='NA',]
c=c[c$'Allegation FADO Type'!='NA',]
c=c[c$'Allegation Description'!='NA',]
#
count(c$'Borough of Occurrence')
a1=68163.00000
a2=round(23269/68163,10)
a3=round(23269/2629150*100000,7)
a4 <- round(mean(c$`Close Year` - c$`Received Year`),10)
#
line<- c[c$`Complaint Contains Stop & Frisk Allegations` == 'TRUE',]
line=count(line$'Incident Year')[7:16,]
freq=line$freq
year=line$x
lm(freq~year)
a5 = round(682-202.9 *2,0)
#
d1<- c[c$`Complaint Has Video Evidence` == 'TRUE',]
true = d1$`Close Year`-d1$`Received Year`
d2<- c[c$`Complaint Has Video Evidence` == 'FALSE',]
false = d2$`Close Year`-d2$`Received Year`
count(true)
count(false)
chisq.test(c(count(true)$freq,0,0,0),count(false)$freq)
a6=40
#
count(c$`Allegation Description`)
#
15993/19
a8 = round(15535/12/(10568/16),9)
