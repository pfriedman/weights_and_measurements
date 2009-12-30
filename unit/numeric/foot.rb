module Unit #:nodoc:
  module Numeric #:nodoc:
    module Foot
      
      KNOWN_CONVERSIONS = { :inch => 12.0, :inches => 12.0, 
                            :yard => 1.0/3.0, :yards => 1.0/3.0,
                            :foot => 1.0, :feet => 1.0 }
      
      def feet
        Unit::Measurement.new(self, KNOWN_CONVERSIONS)
      end
      alias :foot :feet
      
    end
  end
end