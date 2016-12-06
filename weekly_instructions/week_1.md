# Week 1 Instructions

Table of Contents
=================

   * [Week 1 Instructions](#week-1-instructions)
      * [Pre Work](#pre-work)
         * [0. Fill out the <a href="https://fundies.typeform.com/to/nWenNm">survey</a>](#0-fill-out-the-survey)
         * [1. Sign up for github](#1-sign-up-for-github)
         * [2. Sign up for Repl.it](#2-sign-up-for-replit)
         * [3. Sign up for Slack](#3-sign-up-for-slack)
         * [4. Read <a href="/weekly_glossaries/week_1.md">glossary for week 1</a>](#4-read-glossary-for-week-1)
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
Still to come

## Homework
### 1. Sum Array
Go to https://repl.it/EhIS/2

1.1 ) Sum all numbers in array
Using what you learned in class, write a function that takes an array of numbers returns the sum
When you run it, all 3 tests should print out "Great Job!"

1.2) Only sum odd numbers
1.3) Only sum numbers > 10

  
  
### 2. Read this code
Read the following code. Make sure you understand every piece.  Play with it in Repl.it.  Google search for anything you don't know.  If there's something you don't understand and can't find on google message me in slack and make a note of it so that we can discuss it in class


**NOTE:** All of these functions can take strings or arrays  

1) Write a summary of what each function does  
2) Explain in your own words how the function works

**Reading 1:**
```
# Can take a string or array
def some_function(given_string)
  i = 0
  output = ''

  while i < given_string.length
    output += given_string[i * -1 - 1]
    i += 1
  end

  return output
end
```
**HINTS: Strings have indexes like arrays.  Both have negative indexes**


**Reading 2:**
```
# Can take a string or array
def some_func_2(given_string)
  if given_string.length <= 1
  	return true
  else
  	if given_string[0] == given_string[-1]
  		return some_func_2(given_string[1..-1])
  	else
  		return false
  	end
  end
end
```

**Reading 3:**
```
# Can take a string or array
def some_func_3(given_string)
	answer = true
	while given_string.length >	1 && answer == true
		if given_string[0] == given_string[-1]
			given_string = given_string[1..-2]
		else
			answer = false
		end
	end	
	
	return answer
end
```

### 3. Precedence
Read the following code.  Using the precedence table, write out each step the computer takes when reading the code
[Precedence table](https://www.techotopia.com/index.php/Ruby_Operator_Precedence)

```


```




