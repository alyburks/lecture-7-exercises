#### Exercise 1 ###

# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
libary(fueleconomy)

# You should have have access to the vehicles data.frame
View(vachiles)

# Create a data.frame of vehicles from 1997
#limiting the rows not columns
vechiles_1997 <- vechiles[vechiles$year==1997,]

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unqiue(vechiles_1997$year)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
more_than_20_miles <- vechiles[vechiles&drive == '2-Dheel Drive' & vechiles$city > 20,]
#or
indicices <- vechiles$drive == '2 -Wheel Drive' & vechile$city > 20

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?

more_than_20_miles <- more_than_20_miles$id[more_than_20_miles$thwy == min(more_than_20_miles$hwy)]

# Write a function that takes a year and a make as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
most_mpg <- function(myYear, myMake){
    vechiles_that_match <- vechiles[vachiles$year == myYear, vechiles$make == myMake]
    car <-vechiles_that_match[vechiles_that_match&hwy == max(vechiles_that_match&hwy),]
}

# What was the most efficient honda model of 1995?
honda_95 <- most_mpg(1995, "Honda")


