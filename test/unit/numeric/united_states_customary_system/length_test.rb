require 'test/unit'
Dir[File.dirname(__FILE__) + "/../../../../unit/*.rb"].each {|file| require file }

class LengthTest < Test::Unit::TestCase
  
  # INCH
  
  def test_inch_to_foot
    assert_equal(1.inch.convert_to(:feet), 1.0/12.0) 
    assert_equal(12.inches.convert_to(:feet), 1.foot)
    assert_equal(18.inches.convert_to(:feet), 1.5)
  end
  
  def test_inch_to_yard
    assert_equal(1.inch.convert_to(:yards), 1.0/36.0) 
    assert_equal(36.inches.convert_to(:yards), 1.yard)  
  end
  
  def test_inch_to_cm
    assert_equal(1.inch.convert_to(:cm), 2.54) 
    assert_equal(36.inches.convert_to(:centimeters), 91.44)  
  end
  
  # FOOT
  
  def test_foot_to_inches
    assert_equal(1.foot.class, Unit::Measurement)
    assert_equal(12, 1.foot.convert_to(:inch))
    assert_equal(12, 1.foot.convert_to(:inches))
    assert_equal(24.inches, 2.feet.convert_to(:inches))
  end
  
  def test_foot_to_yards
    assert_equal(1.0/3.0, 1.foot.convert_to(:yard))
    assert_equal(1.foot.convert_to(:yards), 1.0/3.0)
    assert_equal(2.feet.convert_to(:yards), 2 * (1.0/3.0))
  end

  def test_unknown_conversion
    assert_raise(Unit::UnknownConversionException) do
      1.foot.convert_to(:foo)
    end
  end
  
  def test_foot_to_feet
    assert_equal(1.foot.convert_to(:feet), 1)
    assert_equal(2.feet.convert_to(:foot), 2.feet)    
  end

  def test_asdf
    p 1.foot.class.ancestors
  end
  
  # YARD
  
  def test_yard_to_foot
    assert_equal(1.yard.convert_to(:feet), 3) 
    assert_equal(2.yards.convert_to(:feet), 6.feet)
    assert_equal(3.yds.convert_to(:ft), 9.feet)
  end
  
  def test_yard_to_inches
    assert_equal(1.yard.convert_to(:inches), 36) 
    assert_equal(2.yd.convert_to(:in), 72) 
    assert_equal(3.yards.convert_to(:inches), 108.inches)
  end
  
  def test_addition
    assert_equal(1.yard + 1.foot, 48.inches)
  end
  
  def test_subtraction
    assert_equal(1.yard - 1.foot, 24.inches)
  end
  
  # MILE
  
  def test_mile_to_inches
    assert_equal(63360, 1.mile.convert_to(:inch))
  end
  
  def test_mile_to_feet
    assert_equal(5280, 1.mile.convert_to(:feet))
  end
  
  # CUBIT
  
  def test_cubit_to_inches
    assert_equal(1.cubit.convert_to(:inches), 18)
  end
  
  def test_cubit_to_feet
    assert_equal(1.cubit.convert_to(:feet), 1.5)
  end
  
  # HAND
  
  def test_hand_to_inches
    assert_equal(1.hand.convert_to(:inches), 4)
    assert_equal(2.hands.convert_to(:inches), 8.inches)
  end
  
  def test_hand_to_feet
    assert_equal(3.hands.convert_to(:feet), 1)
  end
  
  
  
end