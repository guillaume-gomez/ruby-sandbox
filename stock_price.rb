# def get_max_profit(stocks)
#   return stocks[0] if stocks.size < 2
#   max_profit = stocks[1] - stocks[0];
#   stocks.each_with_index do |price_pivot, i|
#     stocks.drop(i + 1).each do |comparant|
#       if comparant - price_pivot > max_profit
#         max_profit = comparant - price_pivot
#       end
#     end
#   end
#   max_profit
# end

def get_max_profit(stocks)
  return stocks[0] if stocks.size < 2
  min_price = stocks[0]
  max_profit = stocks[1] - stocks[0]
  stocks.drop(1).each_with_index do |current_price, index|
    potential_profit = current_price - min_price
    max_profit = [max_profit, potential_profit].max
    min_price  = [min_price, current_price].min
  end
  max_profit
end


stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
result = get_max_profit(stock_prices_yesterday)
if result == 6
  puts "OK"
else
  puts "result --> #{result} : expected 6"
end
puts "---------------------------------------"

stock_prices_yesterday = [2, 10, 7, 5, 8, 11, 9]
result = get_max_profit(stock_prices_yesterday)
if result == 9
  puts "OK"
else
  puts "result --> #{result} : expected 9"
end
puts "---------------------------------------"

stock_prices_yesterday = [15, 7, 5, 8, 2, 9]
result = get_max_profit(stock_prices_yesterday)
if result == 7
  puts "OK"
else
  puts "result --> #{result} : expected 7"
end
puts "---------------------------------------"


stock_prices_yesterday = [15, 7, 5, 8, 9, 2]
result = get_max_profit(stock_prices_yesterday)
if result == 4
  puts "OK"
else
  puts "result --> #{result} : expected 4"
end
puts "---------------------------------------"

stock_prices_yesterday = [15, 13, 12, 8, 4, 2]
result = get_max_profit(stock_prices_yesterday)
if result == -1
  puts "OK"
else
  puts "result --> #{result} : expected -1"
end
puts "---------------------------------------"


stock_prices_yesterday = [15]
result = get_max_profit(stock_prices_yesterday)
if result == 15
  puts "OK"
else
  puts "result --> #{result} : expected 15"
end
puts "---------------------------------------"