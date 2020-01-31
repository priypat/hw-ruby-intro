# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sumArray = 0
  # YOUR CODE HERE
  for i in 0 ... arr.size
    sumArray += arr[i]
  end
  return sumArray
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    #inplace sort and then get sum of last two
    arr.sort!
    return sum(arr.last(2))
  end
end

def sum_to_n? (arr, n)
  # YOUR CODE HERE
  if arr.size == 0
    return false
  end
  #sort and bin search  = nlogn
  arr.sort!
  first = arr[0]
  last = arr[-1]
  while first < last
    if (first + last) == n
      return true
    elsif first + last < n
      first += 1
    else
      last -= 1
    end
  end
  return false
end

# Part 2

def hello (name)
  # YOUR CODE HERE
  if name.length == 0
    return "Hello"
  end
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if s[0].match?(/[AEIOU]/i) == true
    return false
  elsif s[0].match?(/[0-9]/) #check if numeric
    return false
  elsif s[0].match?(/[A-Z]/i) #checks if consonent last case for special chars
    return true
  else 
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  elsif s.match?(/^[10]*00$/)
    return true
  elsif s == "0"
    return true
  end
end

# Part 3
class BookInStock
# YOUR CODE HERE
def initialize(isbn,price)
  if isbn.length == 0 || price <= 0
    raise ArgumentError
  end
  if isbn.is_a? String
    @isbn = isbn
  end
  @price = price
end

#Getter
def price
  @price
end
def price=(price)
  @price = price
end

#Getter & setters
def isbn
  @isbn
end
def isbn=(isbn)
  @isbn = isbn
end
def price_as_string
  return "$%.2f" %@price
end
end