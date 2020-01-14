#############################
# Data Science Specialization
# Exploratory Analysis Course
# Jan-2020
# By Juan Sebastian Leal Díaz
#############################

# Script description:
# To generate the 4th plot

source("readData.R")

# Open file device
png(filename="plot4.png")

# Generate chart
par(mfrow=c(2,2))

hpc$DateTime <- ymd_hms(paste(hpc$Date, hpc$Time))

plot(
  hpc$DateTime,
  hpc$Global_active_power,
  type = "l",
  xlab = "",
  ylab = "Global Active Power"
)

plot(
  hpc$DateTime,
  hpc$Voltage,
  type = "l",
  xlab = "datetime",
  ylab = "Voltage"
)

plot(
  hpc$DateTime,
  hpc$Sub_metering_1,
  type = "l",
  xlab = "",
  ylab = "Energy sub metering"
)
lines(hpc$DateTime, hpc$Sub_metering_2, col="red")
lines(hpc$DateTime, hpc$Sub_metering_3, col="blue")
legend(
  "topright",
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col = c("black", "red", "blue"),
  lty = 1,
  bty = "n"
)

plot(
  hpc$DateTime,
  hpc$Global_reactive_power,
  type = "l",
  xlab = "datetime",
  ylab = "Global_reactive_power"
)

# Close file device
dev.off()