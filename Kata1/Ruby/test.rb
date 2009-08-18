#!/usr/bin/env ruby

require 'test/unit'

class TestPriceStrategy < Test::Unit::TestCase

  def test_simple
    require 'Strategy/simple.rb'
    assert_equal 15, SimplePriceStrategy.new.value(5, 3)
    assert_equal 20, SimplePriceStrategy.new.value(5, 4)
    assert_equal 25, SimplePriceStrategy.new.value(5, 5)
  end

  def test_each_x_free
    require 'Strategy/free.rb'
    strategy = EachXIsFreePriceStrategy.new(3)
    assert_equal 0,  strategy.value(5, 0)
    assert_equal 5,  strategy.value(5, 1)
    assert_equal 10, strategy.value(5, 2)
    assert_equal 10, strategy.value(5, 3)
    assert_equal 15, strategy.value(5, 4)
    assert_equal 20, strategy.value(5, 5)
    assert_equal 20, strategy.value(5, 6)
  end

end
