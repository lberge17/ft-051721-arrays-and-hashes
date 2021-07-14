require "pry"

a = []
Array.new
students = %w(Laura Megan Raquel)

students << "Caitlin"
students.push("Caitlin")
students.unshift("Eri")
students.concat(["Jenn", "Caitlin"])
# students + ["Jenn", "Caitlin"]
# students[100] = "Jitta"

students.pop #=> return last item and remove form array
students.shift #=> return first item and removes from array
students.delete("Laura") #=> deletes all instances of that element
students.delete_at(0)

# students.compact #=> clear out nil values (non-destructive)
# students.uniq #=> non-destructive clears out duplicates
# students.clear #=> clears out array

#### Iterators
students.each.with_index(1) do |student, i|
    puts student
end

students.each {|student| puts student}

# collect / map
greetings = students.collect.with_index do |s, i|
    "Hello, #{s}!"
end

# greetings = []
# students.each {|s| greetings << s}

# find_all / select / filter

caitlins = students.select {|s| s == "Caitlin"}

# find / detect
raquel = students.find {|s| s[0] == "R"}
numbers = [3,4,6,7]
numbers.find {|n| n.even?}

students.sort {|a,b| a <=> b}
students.sort
people = [{
    name: "Laura"
}, {
    name: "Eri"
}]
people.sort_by {|p| p[:name] }

# Conditions

[].empty?
[1,2,3].include?(4) #=> false
[].any?
[].all?


binding.pry