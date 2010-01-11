require 'test/unit'
Dir[File.dirname(__FILE__) + "/../../../../unit/*.rb"].each {|file| require file }

class LengthTest < Test::Unit::TestCase
  
  # METER
  
  def test_meter_to_centimeters
    assert_equal(100, 1.meter.convert_to(:cms))
  end
  
  def test_unknown_conversion
    assert_raise(Unit::UnknownConversionException) do
      1.meter.convert_to(:foo)
    end
  end

  # DECIMETER
  
  def test_decimeter_to_meter
    assert_equal(10.decimeters.convert_to(:meter), 1)
  end
  
  def test_decimeter_to_centimeter
    assert_equal(1.decimeters.convert_to(:centimeter), 10)
  end
  
  # CENTIMETER
  
  def test_centimeter_to_meter
    assert_equal(100.centimeters.convert_to(:meter), 1)
  end
  
  def test_centimeter_to_meter_addition
    assert_equal(100.centimeters + 1.meter, 2.meters)    
  end
  
  # MILLIMETER
  
  def test_millimeter_to_meter
    assert_equal(1000.millimeters.convert_to(:meter), 1)
  end

  def test_millimeter_to_centimeter
    assert_equal(1000.millimeters.convert_to(:centimeter), 100)
  end
  
  # MICROMETER

  def test_micrometer_to_meter
    assert_equal(1000000.micrometers.convert_to(:meter), 1)
  end
  
  
end