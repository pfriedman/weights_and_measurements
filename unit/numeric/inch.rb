module Unit #:nodoc:
  module Numeric #:nodoc:
    module Inch
      
      KNOWN_CONVERSIONS = { :inch => 1.0, :inches => 1.0, 
                            :yard => 1.0/36.0, :yards => 1.0/36.0,
                            :foot => 1.0/12.0, :feet => 1.0/12.0 }
      
      def inches
        Unit::Measurement.new(self, KNOWN_CONVERSIONS)
      end
      alias :inch :inches
    end
  end
end
