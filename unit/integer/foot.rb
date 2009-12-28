module Unit #:nodoc:
  module Integer #:nodoc:
    module Foot
      
      KNOWN_CONVERSIONS = { :inch => 12, :inches => 12, 
                            :yard => 1/3, :yards => 1/3,
                            :foot => 1, :feet => 1 }
      
      def feet
        Unit::Measurement.new(self, KNOWN_CONVERSIONS)
      end
      alias :foot :feet
      
    end
  end
end