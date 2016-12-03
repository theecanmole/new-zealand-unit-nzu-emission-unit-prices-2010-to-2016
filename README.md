# New-Zealand-Unit-NZU-emission-unit-prices-2010-to-2016

New Zealand Emission Unit Prices in the NZ Emissions Trading Scheme 2010 to 2016. 
New Zealand has had an emissions trading scheme since 2009. Although private sector carbon brokers such as https://www.commtrade.co.nz/ and http://www.carbonforestservices.co.nz/carbon-prices.html display current and some historic prices of the NZ emission unit ("NZU"), there is no open public data series of the New Zealand carbon price. 

However, NZU prices are displayed online on various 'carbon news' websites. These prices have been manually 'web-scraped' and recorded on a Google sheet https://docs.google.com/spreadsheets/d/1Ru2Mu7iSwVhO3Dud4jciNYPM1mryNoMYEYPZNEpYUpA/edit#gid=176935002 
That sheet has been downloaded and processed with a R script into a mean monthly time series.

New files added 28/11/2016

NZU-weekly-prices-data-2010-2016.csv (web-scraped raw price data, irregular dates, price and url reference)

NZU-monthly-mean-2010-2016.r         (R script file of code to process raw price data to monthly mean price)

nzu-month-price-2010-2016.csv        (processed monthly mean of raw price data)

NZU-charts.r                         (R script file of code to create charts)

Licence.txt                          (Public Domain  Dedication and License v1.0 http://opendatacommons.org/licenses/pddl/1.0/)

I originally created a monthly data series by digitizing images of price graphs via the programme G3Data and via the website http://arohatgi.info/WebPlotDigitizer/app/. The values obtained in this way are best thought of as being similar (but certainly not identical) to a monthly mean. The accuracy is perhaps + - 20 or even 50 cents NZD. The data file "NZU-price-data-2010-2015.csv" is also available from https://docs.google.com/spreadsheets/d/1kVaWs_G_Uy8ifesqRWEY5V4mAuf6BPZNt6-lte3IuJA
