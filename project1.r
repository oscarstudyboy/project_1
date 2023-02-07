HIV <- read.csv("HIV.csv", header = TRUE, sep = ",")
colnames(HIV)

# do cleaning 
HIV.year = subset(HIV$Year, HIV$Year != 'NA')
HIV.gender = subset(HIV$Gender, HIV$Gender != 'NA')
HIV.age = subset(HIV$Age, HIV$Age != 'NA')
HIV.infections = subset(HIV.infections, HIV$Infections != 'NA')

hist(HIV.year)
hist(HIV.gender, breaks = c(1.5,2.5))
#gender not included as they are binary 7 or 15
hist(HIV.infections)

#year ~ gender
plot(HIV.year ~ HIV.gender)
relation.year.gender <- lm(HIV.year ~ HIV.gender)
summary(relation.year.gender)
abline(relation.year.gender)
#year ~ age
#THIS IS MEANINGLESS AS THE DATA IS SYMMETRIC-PATTERNED
plot(HIV.year ~ HIV.age)
relation.year.age <- lm(HIV.year ~ HIV.age)
summary(relation.year.age)
abline(relation.year.age)
#year ~ infections

#gender ~ age

#gender ~ infections

#age ~ infection

boxplot(HIV.year ~ HIV.gender)
boxplot(HIV.year ~ HIV.age)
