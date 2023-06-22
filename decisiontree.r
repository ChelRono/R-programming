# Load the party package. It will automatically load other
# dependent packages.
library(party)

# Print some records from data set readingSkills.
print(head(readingSkills))

# Load the party package. It will automatically load other
# dependent packages.
library(party)

# Create the input data frame.
input.dat <- readingSkills[c(1:105),] # nolint

# Give the chart file a name.
png(file = "decision_tree.png")

# Create the tree.
  output.tree <- ctree( #nolint
  nativeSpeaker ~ age + shoeSize + score, #nolint
  data = input.dat)

# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()