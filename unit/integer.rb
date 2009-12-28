require File.dirname(__FILE__) + '/integer/yard'
require File.dirname(__FILE__) + '/integer/foot'
require File.dirname(__FILE__) + '/integer/inch'

class Integer #:nodoc:
  include Unit::Integer::Yard
  include Unit::Integer::Foot
  include Unit::Integer::Inch
end
