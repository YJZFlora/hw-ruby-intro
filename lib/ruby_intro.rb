# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  @count = 0
  if arr.empty?
    return @count
  else
    for i in arr
      @count += i
    end
  end
  return @count
end

def max_2_sum arr
  # YOUR CODE HERE
  # time O(n)
  if arr.empty?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end

  max1 = 0
  max2 = 0
  for i in 0..arr.length - 1
    if arr[i] > arr[max1]
      max1 = i
    end
  end

  if max1 == 0
    max2 = 1
  end

  for i in 0..arr.length - 1
    if i == max1
      next
    else
      if arr[i] > arr[max2]
        max2 = i
      end
    end
  end

  return arr[max1] + arr[max2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  end
  s = Set[]
  for i in arr
    if s.include?(n - i)
      return true
    end
    s.add(i)
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0
    return false
  end
  s1 = s[0]
  if s1 == 'A' or s1 == 'E'or s1 == 'I' or s1 == 'O' or s1 == 'U' or s1 == 'a' or s1 == 'e' or s1 == 'i' or s1 == 'o' or s1 == 'u'
    return false
  end
  c = s1.chars()[0]
  if c < 'A' or c > 'z'
    return false
  end
  if c > 'Z' and c < 'a'
    return false
  end
  return true
  end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  if s.count('01') == s.size and s.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    # raise ArgumentError if the ISBN number is the empty string or if the price is less than or equal to zero.
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  # get methods
  def isbn
    @isbn
  end

  def price
    @price
  end

  # setters
  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    str = sprintf("%.2f", @price)
    return "$" + str
  end

end
