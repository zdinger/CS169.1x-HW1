# When done, submit this entire file to the autograder.
# Part 1

def sum arr
  if arr.nil? or arr.empty?
	return 0
  else
    arr.inject(:+)
  end
end

def max_2_sum arr
  if arr.empty? or arr.nil?
	0
  elsif arr.length == 1
    arr.first
  else
	sorted = arr.sort
	sorted[-1] + sorted[-2]
  end
end

def sum_to_n? arr, n
  return false if arr.nil? or arr.empty? or n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

#arr = [1,3,6,2,23,17,32]
#arr =[1,2,3,4,5]
#arr = []
#print "sum      : "
#puts sum (arr)
#print "max_2_sum: "
#puts max_2_sum (arr)
#print "sum_2_n? : "
#puts sum_to_n?(arr, 7)

# Part 2

def hello(name)
   str ="Hello, "
   return str += name
end

def starts_with_consonant? s
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
     true
  else
    false
  end

end

def binary_multiple_of_4? s
  
  if s =~ /[^01]/
  	puts "\'#{s}\' is not a valid binary number!"
	false
  elsif s == "0"
    "Incorrect results for input: \"0\""
  elsif s =~ /\A(?=[a-z])/i
	"Incorrect results for input: \"{string}\""
  elsif s =~ /^[01]*1[01]*00$/
    true
  else
	false
  end
end

#puts hello("Jerry")

#str ='Bracadabra'
#puts str
#puts starts_with_consonant?(str)

#str = '1100'
#str = '1101'

#print "binary_multiple_of_4? : "
#print str
#print " "
#puts binary_multiple_of_4?(str)

#Part 3
class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
	raise ArgumentError, 'ISBN is empty.' unless isbn.length > 0
    raise ArgumentError, 'Price must be greater than zero' unless price > 0
	@isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    if isbn.empty?
      raise ArguementError.new("Must have an ISBN number")
    end
    @isbn = isbn
  end

  def price
    @price
  end
  
  def price=(new_price)
	@price = new_price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
  
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end 

#book = BookInStock.new("isbn1", 33.80)
#puts book.price.class
#puts "ISBN = #{book.isbn}"
#book.price = book.price * 0.75
#puts "New price = #{book.price}"