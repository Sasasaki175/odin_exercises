def stock_picker(stocks)

  max_profit = 0
  max_profit_combination = Array.new
  
  stocks.each_with_index do |stock_price, day|
    unless stocks[day + 1] == nil then
      if (stocks[day + 1..].max - stock_price > max_profit) then
        max_profit = stocks[day + 1..].max - stock_price
        max_profit_combination = [day, stocks.index(stocks[day + 1..].max)]
      end
    end
  end

  p max_profit_combination
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([20,5,4,9,3,17,15,15,2])