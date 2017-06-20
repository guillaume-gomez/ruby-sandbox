def get_products_of_all_ints_except_at_index(array)
  result = []
  array.each_with_index do |_, index|
    product = 1
    array.each_with_index do |val, index2|
      product *= val if index2 != index
    end
    result << product
  end
  result
end

#   def get_products_of_all_ints_except_at_index(int_array)

#     if int_array.length < 2
#         raise IndexError, 'Getting the product of numbers at other indices requires at least 2 numbers'
#     end

#     products_of_all_ints_except_at_index = []

#     # for each integer, we find the product of all the integers
#     # before it, storing the total product so far each time
#     product_so_far = 1
#     i = 0
#     while i < int_array.length
#         products_of_all_ints_except_at_index[i] = product_so_far
#         product_so_far *= int_array[i]
#         i += 1
#     end

#     puts products_of_all_ints_except_at_index.to_s
#     puts product_so_far.to_s

#     # for each integer, we find the product of all the integers
#     # after it. since each index in products already has the
#     # product of all the integers before it, now we're storing
#     # the total product of all other integers
#     product_so_far = 1
#     i = int_array.length - 1
#     while i >= 0
#         products_of_all_ints_except_at_index[i] *= product_so_far
#         product_so_far *= int_array[i]
#         i -= 1
#     end

#     return products_of_all_ints_except_at_index
# end


vals = [1, 7, 3, 4]
result = get_products_of_all_ints_except_at_index(vals)
if result == [84, 12, 28, 21]
  puts "OK"
else
  puts "result --> #{result} : expected [84, 12, 28, 21]"
end
puts "---------------------------------------"

