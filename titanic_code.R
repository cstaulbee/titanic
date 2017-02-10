titanic <- read.csv("titanic_original.csv")
titanic$embarked[is.na(titanic$embarked)] <- "S"
titanic$age[is.na(titanic$age)] <- mean(titanic$age[!is.na(titanic$age)])
titanic$boat <- as.character(titanic$boat)
titanic$boat[is.na(titanic$boat)] <- "None"
titanic$has_cabin_number <- titanic$cabin != ""
titanic$has_cabin_number
write.csv(titanic, file = "titanic_clean.csv")
