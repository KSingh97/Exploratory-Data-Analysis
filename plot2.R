data<-read.table(file.choose(),header = TRUE,sep = ";",stringsAsFactors = FALSE)
d1<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime<-strptime(paste(d1$Date,d1$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
globalActivePower<-as.numeric(d1$Global_active_power)
png("plot2.png",width=480,height = 480)
plot(datetime,globalActivePower,type="l",ylab = "Global Active Power",xlab = "")
dev.off()

