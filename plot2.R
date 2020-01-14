#############################
# Data Science Specialization
# Exploratory Analysis Course
# Jan-2020
# By Juan Sebastian Leal Díaz
#############################

# Script description:
# To generate the 2nd plot
source("readData.R")

# Open file device
png(filename="plot2.png")

# Generate chart
plot(
  ymd_hms(paste(hpc$Date, hpc$Time)),
  hpc$Global_active_power,
  type = "l",
  xlab = "",
  ylab = "Global Active Power (kilowatts)"
)

# Close file device
dev.off()