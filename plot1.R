household_power_consumption<-read.table("R Files/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
household_power_consumption<-subset(household_power_consumption, Date %in% c("1/2/2007", "2/2/2007"))
household_power_consumption$Date<-paste(household_power_consumption$Date, household_power_consumption$Time, sep=" ")
household_power_consumption$Date<-strptime(household_power_consumption$Date, format="%d/%m/%Y %H:%M:%S")

png(filename = "plot1.png")
hist(as.numeric(household_power_consumption$Global_active_power), col = "red", xlab = "Global Active Power(Kilowatts)", main = "Global Active Power")
dev.off()