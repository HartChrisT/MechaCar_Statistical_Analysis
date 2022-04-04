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

# Deliverable 3
# one sample T-test
suspension_Coil_sample = sample(suspension_Coil$PSI, size = 50)
t.test(suspension_Coil_sample, mu=mean(suspension_Coil$PSI))

# subset of PSI's for each manufacturing lot
Manufacturing_lot1 = subset(suspension_Coil,Manufacturing_Lot == "Lot1",select=PSI, drop = T)
Manufacturing_lot2 = subset(suspension_Coil,Manufacturing_Lot == "Lot2",select=PSI, drop = T)
Manufacturing_lot3 = subset(suspension_Coil,Manufacturing_Lot == "Lot3",select=PSI, drop = T)

# t-test for each manufacturing lot
t.test(Manufacturing_lot1, mu=mean(suspension_Coil$PSI))
t.test(Manufacturing_lot2, mu=mean(suspension_Coil$PSI))
t.test(Manufacturing_lot3, mu=mean(suspension_Coil$PSI))