# Week 1 Instructions

## Table of Contents
  * [Week 1 Instructions](#week-1-instructions)
      * [Pre Work](#pre-work)
         * [0. Fill out the <a href="https://fundies.typeform.com/to/nWenNm">survey</a>](#0-fill-out-the-survey)
         * [1. Sign up for github](#1-sign-up-for-github)
         * [2. Sign up for Repl.it](#2-sign-up-for-replit)
         * [3. Sign up for Slack](#3-sign-up-for-slack)
         * [4. Read glossary for week 1](#4-read-glossary-for-week-1)
      * [In class exercises](#in-class-exercises)
      * [Homework](#homework)
         * [1. Sum Array](#1-sum-array)
         * [2. Read this code](#2-read-this-code)
         * [3. Precedence](#3-precedence)

## Pre Work
### 0. Fill out the [survey](https://fundies.typeform.com/to/nWenNm)
This will help me customize the curriculum to you!

### 1. Sign up for github
Github is *the place* for programming  
Developers use github to work together

Go to [https://github.com](https://github.com) and create an account
![github signup](https://www.evernote.com/shard/s358/sh/6e5dbc9b-20c8-460d-bba1-c954faf56919/9030558fa1c4dbd2/res/de396580-8f7e-48a2-9a93-a1daf9bbc271/skitch.png)

### 2. Sign up for Repl.it
Repl.it is a great resource for writing code on the web  

2.1) Visit Repl.it  
2.2) Click "Log In"  
2.3) Click the Github Icon to log in with your shiny new github account   

![github login](https://www.evernote.com/shard/s358/sh/0ebb8d1c-df1a-40d6-a198-bced4329628f/1471a4a214fd8529/res/ed983c7c-4a21-47b6-8cef-9d117468d254/skitch.png)

2.4) Authorize Repl.it to use your github  
2.5) Click "Start Coding Now" button  
![start coding](https://www.evernote.com/shard/s358/sh/bd6e62b4-22f3-4ea4-b934-0fce35ef6584/d10a20ea84c994ca/res/37316178-7f09-4de9-828f-94cac2f72fb4/skitch.png)  
2.6) Click "Ruby"  
![ruby](https://www.evernote.com/shard/s358/sh/1302ea93-6b04-41ee-99ed-22e5c76a165f/641724e157637030/res/67790487-9999-4b41-a8d6-37c21a29970e/skitch.png)  
2.7) There are two sides to the repl.it portal:  

**File Side**  
![file side](https://www.evernote.com/shard/s358/sh/2132772c-63d3-4da6-8767-f9d52743e83f/46916b9a069b7a81/res/6d7ff65b-293f-4820-ae22-06dc8becf9cd/skitch.png)  

**Interactive Side**  
![interactive side](https://www.evernote.com/shard/s358/sh/b040715d-1c06-4d46-981f-79e551160a9c/063038892bee9412/res/c99e1134-81fb-450b-bc03-c85ef43afd60/skitch.png)  

2.8) On the file side, try typing: `puts 'Hello New Student'` and clicking "Run"    
2.9) On the interactive side, try typing: `puts 'Hello New Student'` and hitting enter  

### 3. Sign up for Slack
Slack is a great instant messaging platform for developers.  I am always accessible via slack so feel free to message me anytime  

To set up:  
3.1) You should receive an email to join the "siparttime" Slack Team  
3.2) Follow the instructions  
3.3) Email me if you have problems  
3.4) Once you're in, join the 'sibos_ruby_dec16' team and say hi!


### 4. Read [glossary for week 1](/weekly_glossaries/week_1.md)

## In class exercises
[Slides](http://toppy42.github.io/slide_nav/slides/Week_1.html)


### Exercise A: Check for ingredients
1) Write out the steps for checking if we have the right ingredients  
Required Topics:  
- Problem solving framework

[Answer](/weekly_exercises/week_1/A_1.md)  

2) Convert steps into code  
Required Topics:  
- Array Indexes  
- Booleans  
- Boolean Comparisons  
- Boolean Or Operator  

[Answer](/weekly_exercises/week_1/A_2.rb)  

3) Abstract with Variables  
[Answer](/weekly_exercises/week_1/A_3.rb)  

### Exercise B: Precedence  
1) Find the error in this code by evaluating the code like a computer  

What does this return?  What should it return?
Find the error using the [Precedence table](https://www.techotopia.com/index.php/Ruby_Operator_Precedence)  

Required Topics:  
- Precedence  

Starting code:  
```
['bread', 'peanut butter'][0] == 'bread' ||
['bread', 'peanut butter'][1] == 'bread' &&
['bread', 'peanut butter'][0] == 'jelly' ||
['bread', 'peanut butter'][1] == 'jelly'  
```
[Answer](/weekly_exercises/week_1/B_1.md)  

## Exercise C: Control Flow  
1) Write an if statement
  - if we have the right ingredients in our inventory, print out "You can make a PBJ!"  
  - if we do not have the right ingredients, print out "Go to the store"  

[Starting Code](/weekly_exercises/week_1/C_0.rb)  

Required Topics:  
- Control Flow  
- `puts` (Strings)  

[Answer](/weekly_exercises/week_1/C_1.rb)  

2) Test your code  
  - Change your inventory to not have the right ingredients.  Does it print the right sentence?  
  - Change your inventory to have the right ingredients.  Does it print the right sentence?  


## Exercise D: While Loop  
[Starting State](/weekly_exercises/week_1/D_0.rb)  

1) Change your code to use while loops  
Required Topics:  
- While Loops  

[Answer](/weekly_exercises/week_1/D_1.rb)  

2) Change your code to allow any length of inventory  
Required Topics:  
- Array Methods  

[Answer](/weekly_exercises/week_1/D_2.rb)  

## Exercise E: Functions
1) Write a function that takes an inventory array as an argument and tells us if there is peanut butter in it  
[Answer](/weekly_exercises/week_1/E_1.rb)  

2) Write a general function that takes an inventory and an item and checks if the item is in the inventory  
[Answer](/weekly_exercises/week_1/E_2.rb)  

3) Use the general function to clean up the code from exercise D  
[Answer](/weekly_exercises/week_1/E_3.rb)  


## Homework

### Submission:
Email me all of the code that you create as part of the homework.  
Don't worry if it's incorrect, you're not being graded, this is purely about your own learning  
Feel free to ask for help and share knowledge from fellow students and from me via slack  
  
If you want more work, let me know

### Basic Homework:

### 1. Arrays
A) `['a', 'b', 'c', 'd', 'e']`  
  - use indexes to get the letter 'd' from the array  
  - uses negative indexes to get the letter 'd'  

### 2. Booleans
A) inequalities: type these into repl.it to see what they output  
  - `10 < 20`  
  - `'hello' != 'hello'`  
  - `(50 / 2) >= 25`  
  
B) operators:  use repl to see what each of these returns  
  - `10 > 5 && 10 < 20`  
  - `10 < 5 && 10 < 20`  
  - `10 > 5 && 10 > 20`  
  - `10 > 5 && 10 < 20`  
  
  - `10 > 5 || 10 < 20`  
  - `10 < 5 || 10 < 20`  
  - `10 > 5 || 10 > 20`  
  - `10 > 5 || 10 < 20`  

### 3. Control flow
Get input from the user:
```
print 'Give me a number: '  # Tell the user to input a number
number = gets.chomp  # Set their input to the variable "number".  Chomp cuts off the newline
```
  
A) Write a program that takes a number  
  - If the number is even then print "This number is even"  
  - If the number is odd print "This number is odd"  
  - If the number is 0, print "This is zero"  
  
HINT: use the modulo operator `%` to determine if odd or even  


### 4. While loop
[Basic Usage](https://github.com/toppy42/rampup-ruby/blob/master/explanations/loop.md#syntax-rules)  

A) Write a while loop that prints something 10 times  

B) Use `gets` to ask the user and print something that number of times  

C) Sum an array  
  - Example: `[2, 4, 10]` should return `16`  

D) Sum only the even numbers in an array  
  - Example: `[2, 5, 8, 17]` should return `10`  

E) Sum numbers greater than 10  
  - Example: `[5, 100, 9, 4]` should return `18`  
  
  
### 5. Complex control flow
A) Convert [this flow chart](https://ih0.redbubble.net/image.32643010.3931/flat,550x550,075,f.jpg) into a program  
  - Ask the user a yes/no question at each decision point to navigate the flow  

B) Write a program that asks for a users age and the state they live in and tells them what rights they have  
**NOTE: If you don't want to write out every state, just choose a couple and give an error for the rest**  
  - Drinking  
  - Smoking  
  - Driving  
  - Gambling  
  - Sexual consent  
  - Marijuana  


### 6. Read this code
Read the following code. Make sure you understand every piece.  Play with it in Repl.it.  Google search for anything you don't know.  If there's something you don't understand and can't find on google message me in slack and make a note of it so that we can discuss it in class  

**NOTE:** All of these functions can take strings or arrays  

A) Use the [precedence table](https://www.techotopia.com/index.php/Ruby_Operator_Precedence) to manually evaluate the code below  
B) Write a summary of what each function does  
C) Explain in your own words how the function works  

**Reading 1:**  
```
# Can take a string or array
given_string = "This is the test string"
i = 0
output = ''

while i < given_string.length
  output += given_string[i * -1 - 1]
  i += 1
end

output
```
**HINTS: Strings have indexes like arrays.  Both have negative indexes**  
  
  
**Reading 2:**  
Set the variable `given` to different things to see what this code does  
  - Set `given = 'racecar'`  
  - Set `given = 'test'`  
  - Set `given = [2, 1, 2]`  
  - Set `given = [1, 2, 3]`  

```
# Can take a string or array
given = # set this equal to something
answer = true

while given.length >  1 && answer == true
  if given[0] == given[-1]
    given = given[1..-2]
  else
    answer = false
  end
end  

return answer
```
