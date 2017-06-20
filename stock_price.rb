#subject https://www.interviewcake.com/question/ruby/stock-price

def get_max_profit(stocks)
  max_profit = 0;
  stocks.each_with_index do |price_pivot, i|
    stocks.drop(i).each do |comparant|
      if price_pivot < comparant && comparant - price_pivot > max_profit
        max_profit = comparant - price_pivot
      end
    end
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