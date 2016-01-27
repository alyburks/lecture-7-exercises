#### Exercise 1 ###

# Install devtools package: allows installations from GitHub
# install.packages('devtools')

# Install "fueleconomy" package from GitHub
# devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
# library(fueleconomy)

# You should have have access to the vehicles data.frame
# View(vehicles)

# Which Accura model has the best hwy MPG in 2015? (without method chaining)
filtered <- filter(vechiles, make == 'Acura', year == 2015)
best <- filter(filtered, mwy == max(hwy))
select(best, model)

# Which Accura model has the best hwy MPG in 2015? (nesting functions)
filtered <- filter(vechiles, make == 'Acura', year == 2015)
best <- filter(filtered, mwy == max(hwy))
select(
      filter(vechiles, make == 'Acura', year == 2015), mwy == max(hwy)) , model), 

# Which Accura model has the best hwy MPG in 2015? (pipe operator)
awnser<- vechiles %>% 
                filter(make == 
select(best, model)

### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
