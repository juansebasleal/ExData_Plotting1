#############################
# Data Science Specialization
# Exploratory Analysis Course
# Jan-2020
# By Juan Sebastian Leal Díaz
#############################

# Script description:
# To generate the 1st plot

source("readData.R")

# Open file device
png(filename="plot3.png")

# Generate chart
hpc$DateTime <- ymd_hms(paste(hpc$Date, hpc$Time))
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
  lty = 1
)

# Close file device
dev.off()