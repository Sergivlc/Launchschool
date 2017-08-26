#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each  {|v| puts v}

#Same as above, but only print out values greater than 5.

array.each do |v|
  if v > 5
    puts v 
  end
end

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

new_array = []
array.each do |v|
  if v % 2 != 0 
    new_array.push(v)
  end
end
puts new_array

#Append "11" to the end of the original array. Prepend "0" to the beginning.

array.push(11)
array
array.unshift(0)
array

#Get rid of "11". And append a "3".
array.pop
array.push(3)
array 

#Get rid of duplicates without specifically removing any one value.
array.uniq 


=begin 
What's the major difference between an Array and a Hash?
Arrays are ordered list, hashes a unordered list of paired values (key => value)
=end

#Create a Hash using both Ruby syntax styles.
hash = {example1: 1, example2: 2}
p hash

hash2 = {:example3=> 1, :example4=> 2}
p hash2


#Suppose you have a hash h = {a:1, b:2, c:3, d:4} 

h = {a:1, b:2, c:3, d:4}
h[:b] # 1. Get the value of key `:b`.
h.merge!(e:5) # 2. Add to this hash the key:value pair `{e:5}`
h.delete_if {|k,v| v<= 3.5} # 3. Remove all key:value pairs whose value is less than 3.5

#Can hash values be arrays? Can you have an array of hashes? (give examples)

#Yes, we can have hashes with arrays as values. See below:

employees = {production:["Mike", "Peter", "James"], finance: ["Sarah", "Mary", "Jon"]}

#Can you have an array of hashes? (give examples)

#Yes, you can. Youcan use it in case you need to query a list of key/values in a sequential order.

education = [{peter: 'Msc', mike: 'Ma', jon: 'A levels'}]

#Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

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

#Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

=begin
In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
=end
