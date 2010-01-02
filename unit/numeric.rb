Dir[File.dirname(__FILE__) + "/numeric/*.rb"].each {|file| require file }

class Numeric #:nodoc:
  # include Unit::Conversion
  include Unit::Numeric::Yard
  include Unit::Numeric::Foot
  include Unit::Numeric::Inch
end