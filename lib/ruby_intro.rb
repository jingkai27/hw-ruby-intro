# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each do |i|
    sum += i
  end
  sum
end

testp1 = [1, 2, 3, 4, 5]
testp2 = []
sum(testp1)

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  array = arr.sort()
  sum += array[-1] if arr.length > 0
  sum += array[-2] if arr.length > 1
  sum
end

test0 = []
test1 = [-5,-4,-3,-2,1]
test2 =[4, 5, 1]
max_2_sum(test2)
max_2_sum(test1)
max_2_sum(test0)

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.size <= 1
  k = arr.size-1
  (0..k).each do |i|
    (i+1..k).each do |j|
      if arr[i] + arr[j] == n
        p arr[i], arr[j]
        return true
      end
    end
  end
  return false
end

test3 = [-1, -2, 3, 4, 6, -8]
p sum_to_n?(test3, 12)

# Part 2
def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

name = "jingkai"
p hello(name)

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.match?(/\A[^aeiouAEIOU\d\W_]/i)
    return true
  else
    return false
  end
end


"""
n negates the character class, 
\d removes all digits, 
\W removes all non-word characters 
and i makes case insensitive"""

p starts_with_consonant?("hello")
p starts_with_consonant?("world")
p starts_with_consonant?("1hello")

"""def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /\A[01]+\z/
    sum = 0
    l = s.length - 1
    s.each_char do |i|
      sum += i.to_i * 2**l
    end
    sum = sum % 4
    if sum == 0
      true
    else
      false
    end 
  else
    false
  end
end
"""

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /\A[01]+\z/
    return s.to_i(2) % 4 == 0
  else
    false
  end
end

binary_multiple_of_4?("100")
binary_multiple_of_4?("10a1")
binary_multiple_of_4?("1001")

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @isbn == "" or @price <= 0
      raise ArgumentError
    end
  end
  def price_as_string
    "$%.2f" % @price
  end
end

book = BookInStock.new("1234567890", 35.00)
book2 = BookInStock.new("abcde", 45.90)
book3 = BookInStock.new("abcd`", 4.00)
p book2.price_as_string
p book2.isbn

