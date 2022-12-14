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

############ DELIVERABLE 3 ###################

#t-test for all lots, population mean = 1500
t.test(coil_table$PSI, mu = 1500)

#t-tests for each lot
lot_1 <- coil_table %>% subset(Manufacturing_Lot == "Lot1")
lot_2 <- coil_table %>% subset(Manufacturing_Lot == "Lot2")
lot_3 <- coil_table %>% subset(Manufacturing_Lot == "Lot3")
t.test(lot_1$PSI, mu = mean(coil_table$PSI))

t.test(lot_2$PSI, mu = mean(coil_table$PSI))

t.test(lot_3$PSI, mu = mean(coil_table$PSI))
