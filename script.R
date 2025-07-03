# Step 1: Lab A creates the first vector.
sample_ids <- c("A01", "A02", "A03")
sample_ids

# Step 2: Lab B creates the second vector...
ph_levels <- c(7.2, 6.9, 7.5)
ph_levels

# ...and then combines them into a data frame!
expedition_log <- data.frame(
  id = sample_ids,
  ph = ph_levels)

expedition_log

# Step 3: Lab C creates the matrix in parallel.
temp_grid <- matrix(c(15.2, 15.4, 15.1, 14.8, 14.9, 15.0), nrow = 2, byrow = TRUE)
temp_grid

# Step 4: Lab D archives everything in a list.
project_dossier <- list(
  main_data = expedition_log,  # The data frame from Lab B
  sensor_data = temp_grid,     # The matrix from Lab C
  lead_scientist = "Dr. Eva"   # A single piece of character data
)
project_dossier

project_dossier$lead_scientist
project_dossier[[3]]
str(project_dossier)

project_dossier[1]

library("ggplot2")
library("IamAWESOME")

expedition_data <- read.csv("sample_data.csv")
head(expedition_data)
tail(expedition_data)

ph_test <- 7.1

if (ph_test < 6.5) {
  print("High Priority")  
} else if (ph_test > 7.5){
  print("Discard")
} else {
  print("Routine Analysis")
}

ph_list <- expedition_data$ph_level[1:10]

for (ph_test in ph_list) {
  if (ph_test < 6.5) {
    print("High Priority")  
  } else if (ph_test > 7.5){
    print("Discard")
  } else {
    print("Routine Analysis")
  }
}
