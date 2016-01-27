#### Exercise 2 ###

# Install devtools package: allows installations from GitHub
# install.packages('devtools')

# Install "fueleconomy" package from GitHub
# devtools::install_github("hadley/fueleconomy")

libary(dplyr)

# Require/library the fueleconomy package
# library(fueleconomy)

# You should have have access to the vehicles data.frame
# View(vehicles)

# Create a data.frame of vehicles from 1997 (using dplyr)
1997 <- filter(vahicle, year = 1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(1997)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city (using dplyr)
cars <- filter(vechichles, drive = '2-Wheel Drive', city > 20)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg? (using dplyr)
most <- filter(cars, hwy == min(hwy))
cars2 <- select(most, id)

# Write a function that takes a year and a make as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year (using dplyr)
most_hwy <- function(myYear, myMake{
      car <- filter(vechiles, year == myYear, make == myMake)
      return(filter(car, hwy == max(hwy))
}

# What was the most efficient honda model of 1995?
honda_95 <- most_hwy(1995, 'Honda')

