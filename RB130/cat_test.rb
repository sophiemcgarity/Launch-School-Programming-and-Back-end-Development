require 'minitest/autorun'

require_relative 'cat'

class CatTest < MiniTest::Test
  def setup
    @kitty = Cat.new('Kitty', 5)
  end

  def test_is_cat; end

  def test_name
    
  end

  def test_miaow
  end

  def test_raises_error
  end
  
end