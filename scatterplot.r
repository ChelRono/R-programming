input <- mtcars[, c("wt", "mpg")]
print(head(input))

# Get the input values.
input <- mtcars[, c("wt", " mpg")]

# Give the chart file a name.
png(file = "scatterplot.png")

# Plot the chart
plot(x = input$wt, y = input$mpg,
   xlab = "Weight",
   ylab = "Milage",
   xlim = c(2.5, 5),
   ylim = c(15, 30),  		  # nolint
   main = "Weight vs Milage"
)
 # nolint
# Save the file.
dev.off()

#2.Scatterplot Matrices
# Give the chart file a name.
png(file = "scatterplot_matrices.png")

# Plot the matrices between 4 variables giving 12 plots.

# One variable with 3 others and total 4 variables.

pairs(~wt + mpg + disp + cyl, data = mtcars,
   main = "Scatterplot Matrix")

# Save the file.
dev.off()