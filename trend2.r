library(ScottKnott)


slope <- sk$sen.slope
slope.pct <- sk$sen.slope.pct/100#nolint
direction <- ordered(ifelse(slope > 0, "Increasing", "Decreasing"), levels = c("Increasing", #nolint
    "Decreasing"))
pval <- sk$p.value
signif <- cut(pval, breaks = c(0, 0.05, 0.1, 1), labels = c("p<0.05", "0.05<p<0.10", #nolint
    "p>0.10"))
data.frame(METHOD = "SeasonalKendall", SLOPE = slope, SLOPE.PCT = slope.pct, #nolint
    PVAL = pval, SIGNIF = signif, DIRECTION = direction)#nolint