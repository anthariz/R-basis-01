############################################
# Anthony Ariza
# R basis
# Practice 01
# Created Jul 02, 2020
# Reference: http://web.cs.ucla.edu/~gulzar/rstudio/basic-tutorial.html
############################################


# Importing Data in R Studio
##############################
# For this tutorial we will use the sample census data set ACS.
    acs <- read.csv(url("http://stat511.cwick.co.nz/homeworks/acs_or.csv"))

# Any dataset can be viewed by executing the following line:
    View(acs)
# where acs is the variable dataset is assigned to.

  
# Transforming Data
###################
# To access a particular column, Ex. age_husband in our case.
    acs$age_husband
# To access data as a vector
    acs[1,3]
# To run some queries on data, you can use the subset function of R. 
# Let's say I want those rows from the dataset in which the age_husband is greater than age_wife.
# For this we 'll run the following command in console
    a <- subset(acs , age_husband > age_wife)

# Getting Statistical Averages from data
########################################
# Following functions can be used to calculate the averages of the dataset
# For mean of any column, run:
    mean(acs$age_husband)
# Median, run:
    median(acs$age_husband)
# Quantile, run:
    quantile(acs$age_wife)
# Variance, run:
    var(acs$age_wife)
# Standard Deviation, run:
    sd(acs$age_wife)
# You can also get the statistical summary of the dataset
    summary(acs)
    
# Plotting Data
###############
# To create a scatter plot of a data set, you can run the following command in console
    plot(x = acs$age_husband , y = acs$age_wife, type = 'p')
# To draw a Histogram of a dataset, you can run the command
    hist(acs$number_children)
# To create a scatter plot of a data set, you can run the following command in console
    plot(x = acs$age_husband , y = acs$age_wife, type = 'p')
# To draw a Histogram of a dataset, you can run the command
    hist(acs$number_children)
# Similarly for Bar Plots, run the following set of commands
    counts <- table(acs$bedrooms)
    barplot(counts, main="Bedrooms Distribution",  xlab="Number of Bedrooms")

    