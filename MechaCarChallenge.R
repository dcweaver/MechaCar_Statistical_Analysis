library(dplyr)

mechaCar <- read.csv(file = "MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)

#perform linear regression\
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar))

