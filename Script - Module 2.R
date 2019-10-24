###-------------------------------- SCRIPT 1 --------------------------------###

# BASIC CALCULATIONS ------------------------------------------------------

# Welcome to Introduction to R. Before we begin, make yourself familiar with the
# RStudio layout. We talked about it in Launching RStudio for all the systems.

# The first thing you might want to try is basic calculations. R can do all of
# the calculations you might need. If you Run the line 10 its output will be
# shown in the Console below. To run a code line, put your cursor on that line.
# You can now click the Run button above or use a keyboard shortcut 
# (for Mac: cmd + Enter, for Windows: ctrl + Enter)

2 + 3

# Now try experimenting with some basic calculations. Also, try using this operator
# ^ (or **). Do you know what it does?


# WHAT ARE COMMENTS? ------------------------------------------------------

# You might have noticed that there is a difference between this text and the code
# below:

216 / 4

# The color is different. Try running all the lines (you can select multiple ones)
# The lines beginning with "#" are comments. The text after this sign won't be
# evaluated by R. See the difference by running the next two lines separately.
50 * 765
#50 * 765

#The comments are mostly used to describe what the code does to others and your 
# future self. They also help to keep your code neat.


# CODE EDITOR VS CONSOLE --------------------------------------------------

# We briefly discussed it on Canvas in Launching RStudio for all the systems.
# Hopefully, you have a basic understanding of Rstudio's layout. Make sure you 
# understand the difference between the code editor (the place where you see this)
# and the console (it's where you see the output of your calculations). You can
# write your code in both code editor and console but only the code editor will
# be saved and everything in the console will disappear. You can clear everything 
# in the console (the same works also in Environment and Plots) by clicking the little
# brush in console's upper-right corner. Try out doing some calculations in both
# the code editor and console, you can try saving your worksheet and restarting R.
# In R code is separated by a new line, so if you want to make a new calculation
# just press Enter.


# OBJECTS -----------------------------------------------------------------

#- Basics -#

# In R, as well as in many other programming languages, you will often use 
# objects (variables). Objects store information that can be accessed later. 
# Try running the code below.

a <- 'apple'
a

# You might have noticed several things. When you run the first line, you will
# only see the code returned in the console. When you run the second line, you see
# both the code and the word "apple" which we *assigned* to an object "a". Also, you 
# can see the object "a" and its value in the Environment (top-right). Now anytime
# you want to see "apple", the only thing you have to do is run * a * (either in
# code editor or console).

#- Naming Objects -#

# You can't name your object whatever you want, there are several rules when it
# comes to naming them. There are also naming conventions that help with making 
# the code clearer. The object name can't *start* with a number but can contain it.
# Try it out!

1fruit <- "apple"
fruit2 <- "banana"

# The names also can't start with certain symbols (like "?", "!", "@") and if we
# want to be consistent with R's naming convention we shouldn't use any symbols 
# as the first character of a name. The names can't contain any spaces. To indicate
# a space we use either "_" or "." (e.g. new_variable). Variable names should be
# short but descriptive. You should be able to remember them and what they contain.
# R is case sensitive, New_object and new_object are two different variables.
new_object <- 1
New_object <- 2

# We used an arrow <- when creating our variable a. Assigning objects can be
# done with both the arrow and an equal sign (e.g. a = 2), but the former is preferred.
# To make your life easier use a shortcut Alt + - (minus sign) to make the arrow.
# Whatever is on the left side of the arrow will become the object's name and whatever
# is on the right side of the arrow will be the value assigned to that object.
# R doesn't have a lot of agreed-upon naming conventions, the most important thing
# is to find the style you like and stick with it in your project. If you're 
# interested in how to make your code look very neat we recommend reading this page 
# https://style.tidyverse.org/index.html (only the syntax part for now).
# Try creating some objects to make yourself comfortable with them. 

#- Data Types -#

# Objects can be of many data types. The most important distinction is between 
# character (also called strings) and numeric objects (in R called doubles). 
# The main characteristic of character variables is the quotes around them. 
# They are used to indicate that whatever is inside the quotes is a character or 
# a series of characters (so not a number). If you put a number in quotes it will 
# behave in a completely different way! It will no longer be a number but a character
# and you won’t be able to use it in calculations. Some functions and methods can
# behave differently for each data type or that can only be used on a specific 
# data type. Try running the code below to see some errors appear.

1 + 2
“1” + 2

b <- "banana"
a + b
sum(a, b)

# Next data types are numeric. If you're taking Python course you might know 
# that numeric data can be split into two types: floats and integers. Floats have
# a decimal point, while integers are whole numbers. They can be negative and 
# positive (also 0). We used integers before when we were adding, dividing and 
# multiplying numbers. 

number1 <- 10 # integer
number2 <- 39.5 # float
number3 <- 927. # float

# Another data type is called logical or boolean. This type has only two values
# TRUE and FALSE. They are useful in comparisons and conditional statements.
# We will talk more about them later in the course.

true_statement <- 2 == 2 # "==" means equal to
true_statement

false_statement <- 2 == 3
false_statement
typeof(false_statement)

#- Using objects -#

#Using doubles you can do all sorts of calculations, like so:

number1 / number3
(number2 + number3) * number1 # putting statements in parentheses works like in math

# You can also assign a calculation on objects to another object:

number4 <- number3 ^ number2
number4

# If you look at number4 it doesn't contain the exact operation used, instead it
# only holds the result of the calculation. A *VERY* important thing to remember
# is that if you use a variable name that you used before and assign a new value
# to it, R will overwrite the old value with a new one.

number4 <- "orange"
number4

# Experiment with what you can do with the knowledge you gained so far. Try 
# creating different types of objects, with different names. It might seem boring
# so far but building a strong base will help you in future when you are faced 
# with more difficult tasks.


# ERRORS ------------------------------------------------------------------

# If you scroll back and look at the line numbers on the left you will see a red
# dot with a white "x" inside it. You can also see that some lines of code have
# red underlines. We also saw some errors pop up in the console. Run the line below

2019year <- 2019

# You can see that R shows you a line where it sees an error and underlines the part
# where it thinks the error is. If you run the line you will see an error message.
# Some messages are clear:

1 + 2) * 3

# some might not be as clear:

a:9

# Some errors won't show up until you run the code

"a" - "b"

# As you get more familiar with R the errors will also become clearer. Remember that
# you can always google the error that you're getting (Stackoverflow will be your
# best friend). 


# WHAT IS RMARKDOWN? ------------------------------------------------------

# Up until this point we've been working in basic R script. As the last part of
# this module, we would like to introduce you to RMarkdown. RMarkdown is a tool
# that provides an easy way to produce a rich, fully-documented reproducible
# analysis. In other words, it allows its user to keep in the same document the code,
# the outputs (summaries, plots, etc) and, most importantly, its thoughts and comments.
# Someone can use a single R Markdown file to both save and execute code, as well
# as generate high quality reports that can be shared with an audience

#- Installation -#     

# Like the rest of R, R Markdown is free and open source. You can install the 
# RMarkdown package from CRAN with the following command: 

install.packages("rmarkdown")

# Now go the Canvas page "Introduction to R and RStudio" and from there go to
# "What is RMarkdown?". Read carefully the content of that page and download the
# script that's on the page. You can open it as any other R script.


# KEYBOARD SHORTCUTS ------------------------------------------------------

#Here is a collection of useful keyboard shortcuts (first Windows, then Mac):

# ctrl + Enter; cmd + Enter <- Run the code
# ctrl + S; cmd + S         <- Save file
# ctrl + F; cmd + F         <- Search in file
# alt + -                   <- Make the arrow <- 
# while typing code Tab     <- Code completion suggestions
# ctrl + D; cmd + D         <- Delete line
# ctrl + 1                  <- Jump to Code editor (the cursor)
# ctrl + 2                  <- Jump to Console
# ctrl + 3                  <- Jump to Help
# ctrl + 6                  <- Jump to Plots
# pressing shift with last 4 commands will expand that panel
# ctrl + shift + 0          <- Reset and show all panels
# shift + ctrl + C; shift + cmd + C <- Comment/uncomment line
# ctrl + L                  <- Clear the Console


# This is the end of this script, remember to download and go through the 
# RMarkdown script. In the next module, we will be working in markdown so you 
# need to familiarize yourself with it.


# SUMMARY -----------------------------------------------------------------

# In this script you should have learned:

# - Basic calculations in R (addition, subtraction, multiplication, division etc.)
# - What are comments and why do we use them
# - What is the difference between Code editor and Console and why it is important
    # to know the difference
# - What are objects, how and why do we use them, how to name them
# - Basic data types
# - How does R tell us about errors, how do they look like
# - What is RMarkdown (just a little bit)





