# Create a vector of 100 Credit Card Users
users <- paste("user", 1:100)

# Create a vector of amount of money owed using the runif function
owed <- runif(100, -50, 100)

# Create a vector of amount of money paid (that are typically higher than the amount Owed) (use runif again)
paid <- runif(100, 50, 200)

# Create a data.frame by combining the vectors
bank <- data.frame(users, owed, paid)

# Create a column "Difference" that stores the difference between amount Paid and amount Owed
bank$diff <- bank$paid - bank$owed

# Create a column that is TRUE if the person Paid more than they Owe
bank$more <- bank$diff > 0

# What was the amount Owed of User 57?
user_57 <- bank[57, 'owed']
print(user_57)

# How many users paid more than they owe?
users_that_paid <- sum(bank$more == TRUE)

# What was the total amount of money paid for all users?
total <- sum(bank$paid)

# What was the name of the user who had the highest "Difference"?
the_user <- bank$users[bank$diff == max(bank$diff)]

# Who was the user with the largest amount paid? 

# What was the average "Difference"?

# challenge: how to use dplyr to answer these questions?
