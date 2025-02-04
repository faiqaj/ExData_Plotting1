sourcefile <- "household_power_consumption"
data <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
specificdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
activepower <- as.numeric(specificdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(activepower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
