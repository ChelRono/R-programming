library(lubridate)
library(scales)
library(plyr)
library(ggplot2)

theme_set(theme_bw())

start.date <- as.Date("2000-01-01")  # initial date of all timeseries# nolint
n.years <- 10  # number of years # nolint
initial.value <- 100  # initial value of each time series# nolint

dates <- seq.Date(start.date, by = "month", length.out = 12 * n.years)  # array of dates # nolint
sites <- factor(c("A", "B", "C"))  # site factors
params <- factor(c("X", "Y", "Z"))  # parameter factors

set.seed(123)  # set seed for reproducibility

# generate random slopes and error variances for each site/parameter pair
ts.slopes <- expand.grid(SITE = sites, PARAM = params)# nolint
ts.slopes$SLOPE <- runif(n = nrow(ts.slopes), min = -0.1, max = 0.1) # nolint
ts.slopes$VAR <- runif(n = nrow(ts.slopes), min = 0, max = 3)# nolint
ts.slopes

# generate time series for each site/parameter
df <- expand.grid(SITE = sites, PARAM = params, DATE = dates, VALUE = NA)
for (s in sites) {
    for (p in params) {
        SLOPE <- subset(ts.slopes, SITE == s & PARAM == p)$SLOPE# nolint
        VAR <- subset(ts.slopes, SITE == s & PARAM == p)$VAR# nolint
        df[which(df$SITE == s & df$PARAM == p), "VALUE"] <- initial.value + # nolint
            seq(0, length(dates) - 1) * SLOPE/12 + rnorm(length(dates), 0, sqrt(VAR))# nolint
    }
}

ggplot(df, aes(DATE, VALUE)) + geom_line() + geom_smooth(method = "lm") + facet_grid(SITE ~ #nolint
    PARAM, scales = "free_y")

x <- subset(df, SITE == "A" & PARAM == "X")
head(x)

t <- ts(x$VALUE, start = c(year(start.date), 1), end = c(year(start.date) +  #nolint
    n.years - 1, 12), frequency = 12)
t