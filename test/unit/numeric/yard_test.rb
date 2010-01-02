require 'test/unit'
Dir[File.dirname(__FILE__) + "/../../../unit/*.rb"].each {|file| require file }

class YardTest < Test::Unit::TestCase
  
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
  
end