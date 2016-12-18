# Problem 1
def some_func(given_string)
  i = 0
  output = ''

  while i < given_string.length
    output += given_string[i * -1 - 1]
  end

  output
end
