#############################
# Data Science Specialization
# Exploratory Analysis Course
# Jan-2020
# By Juan Sebastian Leal Díaz
#############################

# Script description:
# To download data and load it into R memory
# It validates if the files already exist

# Include libraries
library(dplyr)
library(lubridate)

data_txt <- "./data/household_power_consumption.txt"
data_zip <- "./data/exdata_data_household_power_consumption.zip"
url_zip <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if (!file.exists(data_txt)) {
  # Download zip file if it does not exist
  if(!file.exists(data_zip)) {
    download.file(url = url_zip, destfile = data_zip, method = "curl")
  }
  # Unzip file
  unzip(zipfile = data_zip)
}

# Read and tidy data
# hpc = household_power_consumption
# Only read data from 2007-02-01 and 2007-02-02
hpc <- read.delim(
    data_txt, header = TRUE,
    sep = ";",
    stringsAsFactors = FALSE
  ) %>%
  as_tibble() %>%
  mutate(
    Date = dmy(Date),
    Time = hms(Time),
    Global_active_power = as.numeric(Global_active_power),
    Global_reactive_power = as.numeric(Global_reactive_power),
    Voltage = as.numeric(Voltage),
    Global_intensity = as.numeric(Global_intensity),
    Sub_metering_1 = as.numeric(Sub_metering_1),
    Sub_metering_2 = as.numeric(Sub_metering_2)
  ) %>%
  filter(Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

#%>% print






