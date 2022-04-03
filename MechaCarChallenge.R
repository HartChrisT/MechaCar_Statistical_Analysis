# Deliverable 1
mechacar <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Create a Linear Regression Model
lm(mpg ~ vehicle_length +
     vehicle_weight +
     spoiler_angle +
     ground_clearance +
     AWD, data=mechacar)

summary(lm(mpg ~ vehicle_length +
             vehicle_weight +
             spoiler_angle +
             ground_clearance +
             AWD, data=mechacar))

# Deliverable 2
suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Total Summary dataframe
total_summary = suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary = suspension_Coil %>% 
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))