data<-read.table(file.choose(),header = TRUE,sep = ";",stringsAsFactors = FALSE)
d1<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime<-strptime(paste(d1$Date,d1$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
globalActivePower<-as.numeric(d1$Global_active_power)
submeter1<-as.numeric(d1$Sub_metering_1)
submeter2<-as.numeric(d1$Sub_metering_2)
submeter3<-as.numeric(d1$Sub_metering_3)
png("plot3.png",width=480,height = 480)
plot(datetime,submeter1,type="l",ylab = "Energy Sub Metering",xlab = "")
lines(datetime,submeter2,col="RED",type="l")
lines(datetime,submeter3,col="BLUE",type = "l")
legend("topright",col=c("black","blue","red"),legend = c("submeter1","submeter2","submeter3"),lty=1)
dev.off()
