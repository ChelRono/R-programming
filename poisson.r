input <- warpbreaks
print(head(input))

#Create regression model
output <-glm(formula = breaks ~ wool+tension, data = warpbreaks,#nolint
   family = poisson)
print(summary(output))