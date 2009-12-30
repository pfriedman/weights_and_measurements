module Unit #:nodoc:
  module Numeric #:nodoc:
    module Yard
      KNOWN_CONVERSIONS = { :inch => 36.0, :inches => 36.0, 
                            :yard => 1.0, :yards => 1.0,
                            :foot => 3.0, :feet => 3.0 }
      def yards
        Unit::Measurement.new(self, KNOWN_CONVERSIONS)
      end
      alias :yard :yards
    end 
  end
end