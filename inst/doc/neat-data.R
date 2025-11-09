## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
require(neatR)

## ----echo = TRUE--------------------------------------------------------------
ndate(Sys.Date() - 3)
ndate(Sys.Date() - 1)
ndate(Sys.Date())
ndate(Sys.Date() + 1)
ndate(Sys.Date() + 4)

## ----echo = TRUE--------------------------------------------------------------
ndate(Sys.Date(), display_weekday = FALSE)

## ----echo = TRUE--------------------------------------------------------------
ndate(Sys.Date(), display_weekday = FALSE, is_month = TRUE)

## ----echo = TRUE--------------------------------------------------------------
nday(Sys.Date(), reference_alias = FALSE)
nday(Sys.Date(), reference_alias = TRUE)
nday(Sys.time(), reference_alias = TRUE)

## ----echo = TRUE--------------------------------------------------------------
x <- seq(Sys.Date() - 10, Sys.Date() + 10, by = '1 day')
nday(x, reference_alias = TRUE)

## ----echo = TRUE--------------------------------------------------------------
ntimestamp(Sys.time())

## ----echo = TRUE--------------------------------------------------------------
ndate(Sys.time())

## ----echo = TRUE--------------------------------------------------------------
ntimestamp(Sys.time(), display_weekday = FALSE,
  include_date = FALSE, include_timezone = FALSE)

## ----echo = TRUE--------------------------------------------------------------
ntimestamp(Sys.time(), include_date = FALSE, display_weekday = FALSE,
           include_hours = TRUE,  include_minutes = TRUE,
           include_seconds = FALSE, include_timezone = FALSE)

## ----echo = TRUE--------------------------------------------------------------
ntimestamp(Sys.time(), include_timezone = FALSE)

## ----echo = TRUE--------------------------------------------------------------
x <- c(10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000)
nnumber(x)
nnumber(x, digits = 0)

## ----echo = TRUE--------------------------------------------------------------
x <- c(1e6, 99e3, 76e3, 42e3, 12e3, 789, 53)
nnumber(x, unit = 'auto')

## ----echo = TRUE--------------------------------------------------------------
nnumber(123456789.123456, unit = 'Mn')

## ----echo = TRUE--------------------------------------------------------------
nnumber(123456789.123456, unit = 'M', unit_labels = list(million = 'M'))

## ----echo = TRUE--------------------------------------------------------------
x <- c(10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000)
nnumber(x, unit_labels = 
          list(thousand = 'K', million = 'M', billion= 'B', trillion = T))

## ----echo = TRUE--------------------------------------------------------------
nnumber(123456789.123456, unit = 'M', unit_labels = list(million = 'M'),
        prefix = '$ ')

nnumber(123456789.123456, unit = 'M', unit_labels = list(million = 'M'),
        suffix = ' CAD')

nnumber(123456789.123456, unit = 'M', unit_labels = list(million = 'M'),
        prefix = '$ ', suffix = ' CAD')


## ----echo = TRUE--------------------------------------------------------------
nnumber(123456789.123456, digits = 2, unit = '',
        thousand_separator = ',')

## ----echo = TRUE--------------------------------------------------------------
npercent(22.8, is_decimal = FALSE)
npercent(0.228, is_decimal = TRUE)

## ----echo = TRUE--------------------------------------------------------------
npercent(0.228, plus_sign = TRUE)
npercent(0.228, plus_sign = FALSE)

## ----echo = TRUE--------------------------------------------------------------
tesla_2017 <- 20
tesla_2023 <- 200
g <- (tesla_2023 - tesla_2017)/tesla_2017
npercent(g, plus_sign = TRUE)
npercent(g, plus_sign = TRUE, factor_out = TRUE)

## ----echo = TRUE--------------------------------------------------------------
nstring('   All MOdels are wrong.   some ARE useful!!!  â', 
        case = 'title', remove_specials = TRUE)

## ----echo = TRUE--------------------------------------------------------------
nstring('   All MOdels are wrong.   some ARE useful!!!  â  ', 
        case = 'title', remove_specials = TRUE, en_only = TRUE)

