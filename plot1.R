data<-read.table(file.choose(),header = TRUE,sep = ";",stringsAsFactors = FALSE)
d1<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
global_active_power<-as.numeric(d1$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(global_active_power,col = "RED",main = "Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
