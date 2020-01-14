# Iterators in ruby

# each
# returns all the elements of collection
p "each executing"
arr = (1..10).to_a
p arr.each { |element| element*10}
puts arr

# map
# map returns new array with the results
# it wont change the original. To change the original use map!

# NOTE: while performing any operation each will give original object as return value.
#        The map always returns modified value .
p "map executing"
arr = (1..10).to_a
p arr.map { |element| element*10}
puts arr



# collect
# returns all the elements of a collection
# its mainly used when you want to do something with the each value to get new array
p "collect executing"
arr = (1..10).to_a
arr2 = arr.collect{ |element| element * 10 }
puts arr2

# select
# returns a new array containing all the elements which evaluted true for given condition
# its mainly used as a filter

p "select executing"
arr = (1..10).to_a
p arr.select { |number| number.odd?}
puts arr
