data<-read.table(file.choose(),header = TRUE,sep = ";",stringsAsFactors = FALSE)
d1<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime<-strptime(paste(d1$Date,d1$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")

globalActivePower<-as.numeric(d1$Global_active_power)
submeter1<-as.numeric(d1$Sub_metering_1)
submeter2<-as.numeric(d1$Sub_metering_2)
submeter3<-as.numeric(d1$Sub_metering_3)
png("plot4.png",width=480,height = 480)
par(mfrow=c(2,2))
plot(datetime,globalActivePower,type="l",ylab = "Global Active Power",xlab = "")
plot(datetime,d1$Voltage,type="l",ylab = "Voltage",xlab = "datetime")
plot(datetime,submeter1,type="l",ylab = "Energy Sub Metering",xlab = "")
lines(datetime,submeter2,col="RED",type="l")
lines(datetime,submeter3,col="BLUE",type = "l")
legend("topright",col=c("black","blue","red"),legend = c("submeter1","submeter2","submeter3"),lty=1)
plot(datetime,d1$Global_reactive_power,type="l",ylab = "Global Reactive Power",xlab = "datetime")
dev.off()
