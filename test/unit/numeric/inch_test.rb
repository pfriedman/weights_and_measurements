require 'test/unit'
Dir[File.dirname(__FILE__) + "/../../../unit/*.rb"].each {|file| require file }


class InchTest < Test::Unit::TestCase
  
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
  
end