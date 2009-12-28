require 'test/unit'
require '../../../unit/integer'
require '../../../unit/measurement'
require '../../../unit/unknown_conversion_exception'

class FootTest < Test::Unit::TestCase
  
  def test_foot_to_inches
    assert(1.foot.class == Unit::Measurement)
    assert(1.foot.convert_to(:inches) == 12)
    assert(1.foot.convert_to(:inch) == 12)
    assert(2.feet.convert_to(:inches) == 24)
  end
  
  def test_foot_to_yards
    assert(1.foot.convert_to(:yards) == 1/3)
    assert(1.foot.convert_to(:yard) == 1/3)
    assert(2.feet.convert_to(:yards) == 2 * (1/3))
  end
  
  def test_unknown_conversion
    assert_raise(Unit::UnknownConversionException) do
      1.foot.convert_to(:foo)
    end
  end
  
  def test_foot_to_feet
    assert(1.foot.convert_to(:feet) == 1)    
    assert(2.feet.convert_to(:foot) == 2)    
  end
  
end