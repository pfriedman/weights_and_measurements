module Unit
  # Provides measurements using Integer#convert_to.
  # It mainly supports the methods on Numeric, such as in this example:
  #
  #   1.foot.convert_to(:inch) # returns 12
  class Measurement
    attr_accessor :value, :conversions, :base_unit, :unit_name
    
    # Set the attributes for the Measurement
    #
    # * value Numeric value 
    # * unit_name Symbol name of the unit of Measurement (e.g. inch)
    # * base_unit Symbol name of the base unit used in the system of Measurement (e.g. Meter for Metric Distance)
    # * conversions Hash of known conversion for this system of measurement
    #   generally this is to the base unit for the system of measurement or
    #   the known conversions within that system from the base unit to another 
    #   within that system
    def initialize(value, unit_name, base_unit, conversions) #:nodoc:
      @value, @unit_name, @base_unit, @conversions = value, unit_name, base_unit, conversions
    end
    
    # Reads best with argument:  10.feet.convert_to(unit_of_measurement)
    def convert_to(unit)
      
      if @unit_name == unit
        return @value
      elsif @unit_name == @base_unit 
        if @conversions.has_key?(unit)
          return @value * (@conversions[unit].to_f)
        else
          raise Unit::UnknownConversionException.new("Cannot convert to #{unit}")
        end
      elsif @unit_name != unit
        value = @value * @conversions[@base_unit]
        base = value.send(@base_unit)
        base.convert_to(unit)
      end
    end

    # Compare this value with other Measurement value
    def ==(other)
      return self.value == other
    end
    
  end
  
end