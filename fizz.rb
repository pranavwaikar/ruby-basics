# even = fizz
# odd = buzz
# div by 5 = fizzbuzz

arr = (1..10).to_a
p "Array is #{arr}"

arr.each do |element|
  if element%5==0
    p "#{element} = fizzBuzz"
  elsif element.even?
    p "#{element} = fizz"
  elsif element.odd?
    p "#{element} =  buzz"  
  end
end

p arr.map {|element| element % 5 == 0  ? "fizzBuzz" : (element.even?) ? "fizz" : "buzz" }