NZU-monthly-mean-2010-2016 R code

# R code to create a monthly mean time series vector of prices of the New Zealand Emission Unit (NZU) from raw data of irregular prices webscraped from various web sources. 

# read in raw NZU price data from http://bit.ly/2gmwpy3

rawdata <- read.csv("/home/simon/R/nzu/NZU-weekly-prices-data-2010-2016.csv", skip=0, header=TRUE, sep=",", colClasses = c("Date","numeric","character"),na.strings="NA", dec=".", strip.white=TRUE)

# examine dataframe
str(rawdata)
'data.frame':	373 obs. of  3 variables:
 $ date     : Date, format: "2010-05-14" "2010-05-21" ...
 $ price    : num  17.8 17.5 17.5 17 17.8 ...
 $ reference: chr  "http://www.carbonnews.co.nz/story.asp?storyID=4529" "http://www.carbonnews.co.nz/story.asp?storyID=4540" "http://www.carbonnews.co.nz/story.asp?storyID=4540" "http://www.carbonnews.co.nz/story.asp?storyID=4588" ...

# add month variable/factor to data
rawdata$month <- as.factor(format(rawdata$date, "%Y-%m"))

# examine dataframe
str(rawdata)
'data.frame':	373 obs. of  4 variables:
 $ date     : Date, format: "2010-05-14" "2010-05-21" ...
 $ price    : num  17.8 17.5 17.5 17 17.8 ...
 $ reference: chr  "http://www.carbonnews.co.nz/story.asp?storyID=4529" "http://www.carbonnews.co.nz/story.asp?storyID=4540" "http://www.carbonnews.co.nz/story.asp?storyID=4540" "http://www.carbonnews.co.nz/story.asp?storyID=4588" ...
 $ month    : Factor w/ 79 levels "2010-05","2010-06",..: 1 1 1 2 2 2 3 3 4 4 ...

# create new dataframe of monthly mean price 
monthprice<-aggregate(price ~ month, rawdata, mean)

# examine dataframe
str(monthprice)
'data.frame':	79 obs. of  2 variables:
 $ month: Factor w/ 79 levels "2010-05","2010-06",..: 1 2 3 4 5 6 7 8 9 10 ...
 $ price: num  17.6 17.4 18.1 18.4 20.1 ...

# replace month factor with mid month date format object 
monthprice[["month"]] = seq(as.Date('2010-05-15'), by = 'months', length = 79) 

# round mean prices to whole cents
monthprice[["price"]] = round(monthprice[["price"]], digits = 2)

# examine dataframe
str(monthprice)
'data.frame':	79 obs. of  2 variables:
 $ month: Date, format: "2010-05-15" "2010-06-15" ...
 $ price: num  17.6 17.4 18.1 18.4 20.1 ...

# write new monthly data to a .csv file 
write.table(monthprice, file = "/home/simon/R/nzu/nzu-month-price-2010-2016.csv", sep = ",", col.names = TRUE, qmethod = "double",row.names = FALSE)
# download from http://bit.ly/2fHbojr
