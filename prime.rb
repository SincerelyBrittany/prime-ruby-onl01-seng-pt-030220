# Add  code here!
# def prime?(num)
#   #if number is divisble by 2 -- false
#   #if number id divisible by 3 --> true
#   # A prime number is a natural number greater than 1 that cannot be formed by multiplying two smaller natural numbers. A natural number greater than 1 that is not prime is called a composite number. For example, 5 is prime because the only ways of writing it as a product, 1 × 5 or 5 × 1, involve 5 itself.
#   if num/2 == 3%2
#     return true 
#   else num/2 == 2%2
#     return false
#   end 
# end

# puts prime?(-1)

def prime?(num)
  if num < 0 or num == 0 or num == 1
    return false
  else
    (2..num-1).to_a.all? do |possible_factor|
      num % possible_factor != 0
    end
  end
end
