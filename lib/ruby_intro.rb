# When done, submit this entire file to the autograder.

# Part 1

def sum arr
 total = 0
 
 for number in arr
   total+=number
  end
  return total
 
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  sum = arr.max(2).sum
  return sum
  
end

def sum_to_n? arr, n
   return !!arr.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  name = "Hello, "+name
  return name
end

def starts_with_consonant? s
  if s.empty?
    return false
  end 
  consonants = /[a-z&&[^aeiou]]/i
  return s.start_with?consonants
  #return  !s.start_with?('a','e','i','o','u','A','E','I','O','U')
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end 
  if !s.chars.all? {|x| x =~ /[01]/}
    return false
  end
  if s.to_i == 0 
    return true 
  end
  return s.end_with?("00")
  
end

# Part 3

class BookInStock
  def initialize (isbn , price)
    @isbn = isbn
    @price= price
    raise ArgumentError.new("Not valid isbn") if isbn.empty?
    raise ArgumentError.new("Not valid price") if price.to_f <= 0.0
  end
  
  def isbn
    @isbn
  end
  
  # Classical set method
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  # Classical set method
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return  "$#{'%.02f' % @price}" 
    
  end
end

# References : https://stackoverflow.com/questions/19350524/how-to-sum-the-largest-two-elements-in-an-array/33507068
#https://stackoverflow.com/questions/23572515/check-if-the-sum-of-two-different-numbers-in-an-array-equal-a-variable-number
#https://www.ruby-forum.com/t/need-regex-to-check-for-consonants-and-put-number-after-each-consonant/224144/6