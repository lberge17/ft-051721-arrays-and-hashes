# Arrays and Hashes

## Array Methods

- Accessing Elements
    - array[index]
    - array[n..length]
    - array.fetch(index)
        - throws error if doesn't exist instead of returning nil
    - array.first
    - array.index(item)
        - returns index of item
    - array.last
    - array.sample(n)
        - optional, returns random item of n # of items

- Adding Items
    - array << item
        - pushes item on end
    - array[index] = item
    - array[start, length] = array2
    - array.concat(array2)
        - add to arrays together, changing the first array
    - array.fill(item, start, length)
        - [5,2,4].fill(3) => [3, 3, 3] 
        - start and length optional
    - array.insert(index, item)
        - inserts item before index specified
    - array.push(item)
        - alias #append, adds to end
    - array.unshift(item)
        - alias #prepend, adds to beginning

- Removing Items
    - array.clear
        - empties array
    - a.compact
        - returns new array with all nil items removed
        - compact! to destructively remove
    - array.delete(item)
        - remove all elements == to item in array
    - array.delete_at(index)
    - a.drop(n)
        - remove first n # of elements non-destructively (return new array)
    - a.pop(n)
        - remove last item and return that item
        - n is optional, # of items from end to remove
    - a.shift
        - remove first item and return it

- Iterators/Enumerables
    - array.cycle(n)
        - call block for each item n times or infinitely
    - array.each
    - array.each_index
        - passes in index instead of item
    - array.each_with_index
        - passes in both item + index
    - array.each.with_index(n)
        - same as each_with_index but offsets index by n
    - array.find
        - returns item for with given block returns a truthy value
        - alias #detect
    - array.map
        - alias #collect
    - array.reverse_each
        - same as each but in reverse order
    - array.select
        - returns all items for with given block returns a truthy value
        - alias #find_all, alias #filter
    - array.sort
    - array.sort_by

- Check Conditions
    - array.any?
        - returns true is block given returns a truthy value
    - array.count
        - alias length, alias size
        - count also accepts an arg of an item to count how many of that item appear
    - array.empty?
    - array1.eql?(array2)
    - array.frozen?
    - array.include?(item)


[Documentation - more methods here](https://ruby-doc.org/core-2.6.1/Array.html)


## Hashes

- Accessing Elements
    - hash[:key]
    - hash.keys
        - returns array of keys
    - hash.values 
        - returns an array of symbols
    - hash.dig
        - [docs](https://ruby-doc.org/core-2.6.1/Hash.html#method-i-dig)
    
- Iterators
    - hash.each
    - hash.map
    - hash.find
        - returns array of key and value
    - hash.select

- Conditions
    - hash.has_key?(key)
    - hash.has_value?(value)
    - hash.empty?

[Documentation](https://ruby-doc.org/core-2.6.1/Hash.html)