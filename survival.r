# Load the library.
library("survival")

# Print first few rows.
print(head(pbc))

#Applying Surv() and survfit() Function
# Load the library.
library("survival")

# Create the survival object. #nolint
survfit(Surv(pbc$time,pbc$status == 2)~1)#nolint

# Give the chart file a name.
png(file = "survival.png")

# Plot the graph. #nolint
plot(survfit(Surv(pbc$time,pbc$status == 2)~1))#nolint

# Save the file.
dev.off()