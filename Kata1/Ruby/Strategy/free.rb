require File.dirname(__FILE__) + '/_interface.rb'

class EachXIsFreePriceStrategy < PriceStrategy
  def initialize(x)
    @each_free = x
  end
  
  def value(price, number)
    case number
      when 0...@each_free
        return price * number
      else
        return price * (@each_free - 1) + value(price, number - @each_free)
    end
  end
end
