#1.Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each  {|v| puts v}

#2.Same as above, but only print out values greater than 5.

array.each do |v|
  if v > 5
    puts v 
  end
end

#3.Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

new_array = []
array.each do |v|
  if v % 2 != 0 
    new_array.push(v)
  end
end
puts new_array

#4.Append "11" to the end of the original array. Prepend "0" to the beginning.

array.push(11)
array
array.unshift(0)
array

#5.Get rid of "11". And append a "3".
array.pop
array.push(3)
array 

#6.Get rid of duplicates without specifically removing any one value.
array.uniq 


=begin 
7.What's the major difference between an Array and a Hash?
Arrays are ordered list, hashes a unordered list of paired values (key => value)
=end

#8.Create a Hash using both Ruby syntax styles.
hash = {example1: 1, example2: 2}
p hash

hash2 = {:example3=> 1, :example4=> 2}
p hash2


#9.Suppose you have a hash h = {a:1, b:2, c:3, d:4} 

h = {a:1, b:2, c:3, d:4}
h[:b] # 1. Get the value of key `:b`.
h.merge!(e:5) # 2. Add to this hash the key:value pair `{e:5}`
h.delete_if {|k,v| v<= 3.5} # 3. Remove all key:value pairs whose value is less than 3.5

#10.Can hash values be arrays? Can you have an array of hashes? (give examples)

#Yes, we can have hashes with arrays as values. See below:

employees = {production:["Mike", "Peter", "James"], finance: ["Sarah", "Mary", "Jon"]}

#Can you have an array of hashes? (give examples)

#Yes, you can. Youcan use it in case you need to query a list of key/values in a sequential order.

education = [{peter: 'Msc', mike: 'Ma', jon: 'A levels'}]

#11. Choose your favourite api sources

#12.Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
contacts.each do |k,v|  puts v end

#13.Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

=begin
14.In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
=end
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#15.Use Ruby's Array method delete_if and String method, to delete all the words that begin with an 's' in the following array
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?('s')}

#Then recreate the array and delete all the words that start by either 's' or 'w'

arr.delete_if {|word| word.start_with?('s','w')}

=begin 
16.Take the following array:
and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split methods
=end
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

#17.What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#The syntax used to create the hashes is different, but both are the same, therefore it will print 'These hashes are the same'

