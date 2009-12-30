require 'test/unit'
require '../../../unit/numeric'
require '../../../unit/measurement'
require '../../../unit/unknown_conversion_exception'

class FootTest < Test::Unit::TestCase
  
  def test_yard_to_foot
    assert_equal(1.yard.convert_to(:feet), 3) 
    assert_equal(2.yards.convert_to(:feet), 6.feet)
  end
  
  def test_yard_to_inches
    assert_equal(1.yard.convert_to(:inches), 36) 
    assert_equal(3.yards.convert_to(:inches), 108.inches)    
  end
  
end