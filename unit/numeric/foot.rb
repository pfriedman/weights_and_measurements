module Unit #:nodoc:
  module Numeric #:nodoc:
    module Foot

      KNOWN_CONVERSIONS = {:inch => 12.0, :inches => 12.0, :in => 12.0}
      
      def feet
        Unit::Measurement.new(self, :foot, :inch, KNOWN_CONVERSIONS)
      end
      alias :foot :feet
      alias :ft :feet
    end
  end
end