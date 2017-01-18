# Go to https://www.sublimetext.com/3
# Download the version of sublime for you

# Create a new file (example.rb) in the Documents directory
# add the following code to the file:
puts 'Hello World'




# Install ruby
# Mac OSX, you already have it

# Open the terminal Applications > Utilities > Terminal



# Windows
# Go to: http://rubyinstaller.org/downloads/
# Download version 2.2.6
# Run the installer


# Click the options:
  # Add Ruby Executables to your PATH
  # Associate rb files with ruby installation


# To start a terminal with ruby preloaded, go to

# Start (the windows icon) > All Programs > Ruby 2.2.6 > Start Command Prompt with Ruby
# Now you can type "irb" to get a ruby console
# You can also



# Go back to sublime, right click and select "Copy File Path"
# Go to your terminal and type "ruby" and then paste the file path
# That will execute the code in your file



# Update your sublime settings:
# Mac: In menu bar: Sublime Text > Preferences > Settings
# Windows: Preferences > Settings

# Add this to the file:
{
  "ensure_newline_at_eof_on_save": true,
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
}



# Installing gems:
# Mac:
# Go to rubygems.org/pages/download
# Download the zip file and extract it
# Open your terminal. type 'cd' and then drag the rubygems folder into terminal
# Type 'ruby setup.rb'
# If it tells you "Permission denied", type 'sudo ruby setup.rb' and enter your password

# Windows:
# Should already be installed with ruby

# To verify it is installed, type in terminal: 'gem -v'



# Install Pry
# gem install pry

# now in your file, type 'binding.pry' at the top
# when you run the file, you will be dropped into a pry session just like in repl.it

# To exit the pry session, type 'exit'










