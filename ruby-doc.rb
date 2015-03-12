Ruby

# print string
puts("Hello World")

# irb
irb --simple-prompt

# assignment
?> a = 5; b = 6; c=7

# line continuation broken into multiple lines
>> Math.sin(from_latitutde) * Math.sin(to_latitude) \
?> Math.cos(from_latitude) * Math.cos(to_latitude) \
?> Math.cos(from_latitude) * Math.cos(to_latitude) \
?>

# numbers
1
250
-33

# integers
5            # Fixnum
9876543210   # Bignum
70000000 * 9 # Bignum

# floats
98.6
3.14
1.0
-0.0000001

# set of operators
+, -, *, /      # addition, subtraction, multiplication, division
**              # exponent
%               # modulus

# arithmetic w/ numbers
2 / 3


# arithmetic w/ floats
2 / 3.0

# mixture of integers and floats
2 + 3.0

# numbers can be converted to integers(to_i)
>> 5.55.to_i
=> 5


# numbers can be converted to float(to_f)
>> 2 / 3.to_f
=> 0.6666666666666666

# order of precdence  using parentheses
>> (5 + (10 * 365)) / 7
=> 522

# Strings
'Hello World'
'He said, "Look, a tree!"'
"Let's go shopping"

# operator overloading
>> "You can add " + "strings"
=> "You can add strings"

>> "Ho! " * 3
=> "Ho! Ho! Ho! "

# mixing strings w/ numbers
# use string values in mathematic expressions, 
# you need to convert the string to a number
>> 7 * 3
=> 21
>> '7' * 3
=> "777"
>> 3 * '7'

>> 3 * '7'.to_i
=> 21

?> '98.6'.to_i
=> 98

?> '15'.to_f
=> 15.0

?> 'What will this do?'.to_f
=> 0.0

?> '12 days of christmals'.to_i
=> 12

# defining a string that contains both single and double quotes. 
# you need to escape
'This is Jim\'s car.'
"Ruby is a \"readable\" language"


# strong dynamic typing
language = "ruby"

# reassignment
a = 9
a = 'Hello'


# Variables can be inserted into strings declared with double quote("" or %Q)
count = 5
>> puts "#{count} gold rings"
5 gold rings

>> puts %Q(You have #{count} cats?)
You have 5 cats?


# puts to STDOUT
# print does not add new line to the end.
?> puts("Hello")
Hello
=> nil

>> print("Hello")
Hello=> nil

# read from STDIN
print "What is your name?"
name = gets
puts "Hello. #{name}"

# chomp
print "What is your age"
age = gets.chomp
puts "You are #{age} years old!"

# Methods are called on an object using dot notation
object.method_name
5.to_f

# self
# methods called without the period
# method is actuall being called on the current object
puts "I'm implicity talking to myself"
self.puts "Hi, self"

# Create a method
def my_add
	# method body here
end

self.my_add
my_add

# methods can take values as arguments, 
# which are assigned to local variables in the method

def my_add(value1, value2)
	puts value1, value2
end

my_add(5, 2)

# Methods can return one value using return.

def my_add(value1, value2)
	return value1 + value2
end

result = my_add(1, 2)

# Method arguments can be assigned default values that will be used if none are passed in
def my_add(value1, value2 = 1)
	value1 + value2
end

puts my_add(3)

# Methods can take an arbitrary number of arguments by prefixing the argument name with an asterisk(*).
# The arguments will be gathered up into a collection called an Array.
def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def add_with_message(message, *numbers)
  "#{message} : #{add(*numbers)}"
end

puts add_with_message("The Sum is", 1, 2, 3)

# Procs and Blocks
# Procs and Blocks of code like methods that have been bound to a set
# of local variables. Once bound, thd code can be passed around as value to
# other parts of the program and still acess those variables

# in functional programming, this is called a closure. They are present in may other
# languages as well-like Java's anonymous innner classes

square = Proc.new {|x| x * x}
square.call 5
square.call  11

#A proc is bound to the local variables in the scope whee it was 
#defined, but maybe called in a different context and still
#access those variables

def evaluate(proc)
	a = 2
	proc.call
end

a = 1
evaluate Proc.new {puts a}

# one line blocks us curly braces and multiline blocks use do and end
10.times do
	puts "Hello"
end


# a block is simply the terminology for a Proc that is passed to a method call
10.times { puts "Hello"}
	




























