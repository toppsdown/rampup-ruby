# This is the source code of Ruby:
# https://github.com/ruby/ruby


# Note that the base of the language is all written in C
# Here is the definition of Arrays: https://github.com/ruby/ruby/blob/trunk/array.c


# For getting code
# 1) Download code
#    - Go to https://github.com/ruby/ruby
#    - Click "Clone or download"
#    - Download ZIP
#    - Unzip the file into a folder
#
# 2) Open the folder in sublime
#    - Open a new file, drag the folder into the file
#
# 3) Sublime shortcuts:
#   cmd-p: fuzzy finds code
#   View > Layout > Columns: 2 (or you can do rows)
#   cmd-shift-f: search all


# For reading through these things
# 1) Open the file and it's test file
# 2) Look at what class/module it's being defined under
# 3) Look at the function names
# 4) Look at the comments for the functions
# 5) Look at the tests to see what it's doing
# 6) Open IRB/Pry and try out the examples
#
# Tips:
# If you see a method you don't recognize, search the codebase
# If you see a word you don't know search google




## 1) Unicode Normalize
# https://github.com/ruby/ruby/blob/trunk/lib/unicode_normalize.rb

# Defines 3 methods on string
# each one requires the real unicode_normalize code

# Things to know:
#
# default arguments:
#   "def my_method(default_arg = 1)"
#
# symbols:
#   ":my_sym"
#
# what is unicode?:
#   Use google to look this up




## 2) Base64
# https://github.com/ruby/ruby/blob/trunk/lib/base64.rb

# Things to know:
#
# What is base64 encoding?: Google this
# what's a module?: Google this
# Array.pack: Google this


## 3) Abbrev
# https://github.com/ruby/ruby/blob/trunk/lib/abbrev.rb
#
# Regexp:
#   "/[A-Za-z0-9].*\d*/"
#
# default arguments:
#   "def my_method(default_arg = 1)"



## 4) Observer
# https://github.com/ruby/ruby/blob/trunk/lib/abbrev.rb

# Things to know
# module
#   module MyModule
#
# send, defined? (metaprogramming)
#
# Hashes
#
# inheritance:
#   class MyClass < ParentClass

