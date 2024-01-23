def facebook_stocks(stocks)
  return 0 if stocks.nil? || stocks.length < 2

  min_price = stocks[0]
  max_profit = 0

  stocks.each do |item|
    min_price = [min_price, item].min
    max_profit = [max_profit, item - min_price].max
  end

  max_profit
end

p facebook_stocks([9, 11, 8, 5, 7, 10])
