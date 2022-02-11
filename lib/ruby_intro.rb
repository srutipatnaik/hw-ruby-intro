# When done, submit this entire file to the autograder.

# Part 1

#Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name. Run associated tests via: $ rspec -e '#hello' spec/part2_spec.rb (Make sure you are in the correct directory: cd assignment)


def sum arr
  # YOUR CODE HERE
  return arr.sum
end

#Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any English letter other than A, E, I, O, U.) Make sure it works for both upper and lower case and for non-letters. Run associated tests via: $ rspec -e '#starts_with_consonant?' spec/part2_spec.rb


def max_2_sum(array)
    sum(array.sort.last(2))
end

#Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4, such as '1000'. Make sure it returns false if the string is not a valid binary number. Run associated tests via: $ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb



def sum_to_n?(arr,n)
	arr.length < 2 ? false :
	 (arr.combination(2).find{|x,y| x + y == n } ? true : false)
end


# Part 2

#Define a method hello(name) that takes a string representing a name and returns the string
#"Hello, " concatenated with the name. 
#Run associated tests via: $ rspec -e '#hello' spec/part2_spec.rb
#(Make sure you are in the correct directory: cd assignment)


def hello(name)
  # YOUR CODE HERE
  return 'Hello, '+name
end


#Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any English letter other than A, E, I, O, U.) Make sure it works for both upper and lower case and for non-letters. Run associated tests via: $ rspec -e '#starts_with_consonant?' spec/part2_spec.rb

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end


#Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4, such as '1000'. Make sure it returns false if the string is not a valid binary number. Run associated tests via: $ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb



def binary_multiple_of_4? s
  if s=="0"
     return true
  end
  if s.match(/^[0-1]{1,}$/) == nil
     return false
  end 
  if s.match(/^[10]*00$/)
     return true
  end
  false
end

# Part 3

#Define a class BookInStock which represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price, as attributes. Run associated tests via: $ rspec -e 'getters and setters' spec/part3_spec.rb (Make sure you are in the correct directory: cd assignment)


class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    
    raise ArgumentError if isbn.empty? || price <= 0
    
    @isbn = isbn
    
    @price = price
    
  end

  def price_as_string
    
    format("$%.2f", @price)
      
  end

end