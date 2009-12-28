module Unit
  # Provides measurements using Integer#convert_to.
  # It mainly supports the methods on Numeric, such as in this example:
  #
  #   1.foot.convert_to(:inch) # returns 12
  class Measurement
    attr_accessor :value, :conversions

    def initialize(value, conversions) #:nodoc:
      @value, @conversions = value, conversions
    end
    
    # Reads best with argument:  10.feet.convert_to(unit_of_measurement)
    def convert_to(unit)
      if @conversions.has_key?(unit)
        return @value * @conversions[unit]
      else 
        raise Unit::UnknownConversionException.new("Cannot convert to #{unit}")
      end
    end
    
  end
  
end