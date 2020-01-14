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
png(filename="plot1.png")

# Generate chart
hist(hpc$Global_active_power,
     col="red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

# Close file device
dev.off()