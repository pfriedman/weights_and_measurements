Dir[File.dirname(__FILE__) + "/numeric/*/*.rb"].each {|file| require file }

class Numeric #:nodoc:
  # include Unit::Conversion
  include Unit::Numeric::UnitedStatesCustomarySystem::Length
  include Unit::Numeric::Metric::Length
end