############ DELIVERABLE 1 ###################
library(dplyr)

mechaCar <- read.csv(file = "MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)

#perform linear regression\
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar))


############ DELIVERABLE 2 ###################

coil_table <- read.csv(file = "Suspension_Coil.csv", check.names=F,stringsAsFactors = F)

total_summary <- coil_table %>% summarize(
  Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarise(
  Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
