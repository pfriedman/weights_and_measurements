require 'test/unit'
require '../../../unit/integer'
require '../../../unit/measurement'
require '../../../unit/unknown_conversion_exception'

class FootTest < Test::Unit::TestCase
  
  def test_inch_to_foot
    assert(1.inch.convert_to(:feet) == 1.0/12.0) 
    assert(12.inches.convert_to(:feet) == 1.foot)
    assert(18.inches.convert_to(:feet) == 1.5)
  end
  
  def test_inch_to_yard
    assert(1.inch.convert_to(:yards) == 1.0/36.0) 
    assert(36.inches.convert_to(:yards) == 1.yard)  
  end
  
end