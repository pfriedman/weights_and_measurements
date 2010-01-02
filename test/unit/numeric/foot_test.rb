require 'test/unit'
Dir[File.dirname(__FILE__) + "/../../../unit/*.rb"].each {|file| require file }

class FootTest < Test::Unit::TestCase
  
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
  
end