require File.dirname(__FILE__) + '/_interface.rb'

class SimplePriceStrategy < PriceStrategy
  def value(price, number)
    price * number
  end
end
