require File.dirname(__FILE__) + '/numeric/yard'
require File.dirname(__FILE__) + '/numeric/foot'
require File.dirname(__FILE__) + '/numeric/inch'

class Numeric #:nodoc:
  include Unit::Numeric::Yard
  include Unit::Numeric::Foot
  include Unit::Numeric::Inch
end