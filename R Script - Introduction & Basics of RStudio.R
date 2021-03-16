# Place valid code besides right angle bracket.

# I. Basic Math
# Follows PEMDAS: Parentheses, Exponents, Multiplication, 
# Division, Addition, and Subtraction
3 * 7 * 2
4/3 
(4 * 6) + 5
4 * (6 + 5)
# Putting space between operators (such as * and /) is a good practice.

# Reserved words in R
?reserved
# Words from "if, ..., break" are used for conditions, loops and other functions
# "TRUE" & "FALSE" are Logical constants
# NULL: Absence of a value
# Inf: Infinity (ex: 1/0)
1/0
# NaN: Not a Number
0/0
# NA: Not Available and is used to represent missing values.
# R is a case sensitive language, so "TRUE" & "True" are not same, can use "True"


# II. Variables
# There are integral part and R offers great flexibility.
# Variables can hold - Number, Character, Data, Function, Result, & Plot.
# Variables can change between these.
# Valid modes of Assignment for Variables: "<-", "=", & "->".
x <- 2
x
5 -> y
y
z = 7
z
# Assignment can be used to successively assign values to multiple variables.
a <- b <- 3
a
b
# More complex way, but sometimes needed:
assign ("j", 4)
j
# Variable Names can contain any combination of Alphanumeric Characteristics,  
# Periods (.) & Underscores (_). But Must not start with a Number or Underscore.
# Variables cannot be one of the "reserved" words: ?reserved or help(reserved)
# Better to use "<-" instead of "=" (test for equality).
# Better to use actual names or nouns instead of single letters for clarity.
# Removing a Variable: rm(variable) or for complete removal: gc(variable).
# Using "gc" is like garbage cleaning and frees up entire memory.
j
rm(j)
j
#Important: R is a Case Sensitive language and applies to Variables names also.
XC <- 17
Xc
XC

# III. Data Types
# Main data types in R: Numeric, Character (String), Date/POSIXct, and Logical.

# 1. Numeric
# Handles Integers, Decimals, Zero, Positive & Negative Numbers
# Variable having only Numeric value is automatically Numeric.
# To Test whether a variable is numeric, use: "is.numeric".
is.numeric(x)
# Integer: Whole numbers only, no decimals.To set Variable to integer, add "L".
i <- 5L
i
is.integer(i)
# Since all Integers are Numeric, it will also be numeric.
is.numeric(i)
# R automatically promotes Integers to Numeric, when needed.
# Important when result is decimal (Integer/Integer or Integer/Numeric)
class(4L)
class(2.8)
4L * 2.8
class (4L * 2.8)
5L / 2L
class (5L / 2L)

# 2. Character 
# Characters are also important and very common in statistical analysis.
# Must be handled with care, Characters are also Case sensitive.
# Use double quotations (" ") to assign character to any Variable. 
# To find the length of a Character or Numeric, use the "nchar" function.
x <- "name"
class (x)
nchar (x)

# 3. Dates
# It is difficult in every language. R uses numerous types of dates.
# Date: Number of Days since January 1, 1970
# POSIXct: Number of Seconds since January 1, 1970
date1 <- as.Date("2020-08-23")
class (date1)
as.numeric (date1)
date2 <- as.POSIXct("2020-08-23 16:30")
class (date2)
as.numeric (date2)
class(as.numeric (date2))

# 4. Logical
# Logicals are way to testing whether something is TRUE or FALSE
# TRUE is same as 1 and FALSE is same as 0.
TRUE * 4
FALSE * 8
# Logicals have their own test using the "is.logical" function.
# Again "TRUE" and "FALSE" are Case sensitive like elsewhere in R.
abc <- TRUE
class (abc)
is.logical(abc)
# R provides option for using "T" and "F" as shortucts for "TRUE" & "FALSE".
# But this should not be used, as they can easily overwritten.
T
class(T)
T <- 37
class (T)
#Logicals can result from comparing two numbers or characters.
# Does 2 equal 3?
2 == 3
# Does 2 not equal 3?
2 != 3
2 <= 3
2 >= 3
"data" == "stats"

# IV. Vectors
# Vector is a collection of elements of same type.
# c (1, 3, 5, 7, 9) is a vector of numbers 1, 3, 5, 7, 9.
# c ("R", "Excel", "SPSS", "EViews") is a vector of character elements.
# Vectors are very helpful in R, infact R is a "Vectorized" Language.
# They are a powerful concept and remove need for creating loops.
# Vectors do not have a dimension, so there is no Column or Row vector.
# Common way to create a vector:"c" which means combining multiple elements.
x <- c (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x
# Utility of Vectors is clear as we can perform all mathematical operations.
x * 3
x + 2
x - 3
x / 5
x ^ 2
sqrt (x)
# Shortcut to create a sequence of numbers in either direction is ":"
2:-3
-5:7
# Vector Operations: Mathematical Operations on Vectors
x <- 1:10
y <- -6:3
x + y
x - y
x * y
x / y
x ^ y
length (x)
length (y)
length (x - y)
# Vectors and Logical functions
x <= 5
x > y
x < y
# To test whether all resulting elements are TRUE, use the "all" function.
# To whether any resulting element is TRUE, use the "any" function.
any (x < y)
all (x > y)
# "nchar" function also operates on each element of vectors.
Management <- c("Finance", "Marketing", "Operations", "HR", "Strategy")
nchar(Management)
nchar(y)
y
# Accessing individual elements of a Vector is done using square brackets ([]).
# First element of a Vector: Vector[1], First two elements: Vector[1:2]
# Non consecutive elements can be accessed by: Vector[c(1, 4, 8)]
X <- 11:20
X[4]
X[1:3]
X[c(1, 7, 9)]


# Calling Functions
# We have already used various functions like nchar, length, as.Date
x <- 1:10
mean (x)

# Missing Data
# Missing Data is important in both statistics and computing.
# R has two types of missing data, NA and NULL.
# R uses NA to represent missing data.
# NA is entered by typing letters "N" and "A" like normal text.
# We can test any element of a vector for missingness by using "is.na" test.
z <- c (1, NA, 3, 4, NA)
z
is.na(z)
zcharacter <- c("Arts", "Commerce", NA, "Humanities")
is.na (zcharacter)
# If we calculate mean of Z, it will return NA even if single element is missing
mean(z)
# When na.rm is TRUE, mean first removes the missing data then calculates mean.
mean(z, na.rm = TRUE)
# Similar rules apply for "sum", "min", "max", "var", "sd" and other functions.

# NULL
# NULL is nothingness, different from meaningness.
# Important difference is that NULL is atomical and cannot exist within Vector.
z <- c(1, NULL, 3)
z
# Test for Null is: "is.null"
f <- NULL
is.null (f)
is.null (7)
