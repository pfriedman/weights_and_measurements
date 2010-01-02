module Unit #:nodoc:
  module Numeric #:nodoc:
    module Yard
      
      KNOWN_CONVERSIONS = {:inch => 36.0, :inches => 36.0, :in => 36.0}
        
      def yards
        Unit::Measurement.new(self, :yard, :inch, KNOWN_CONVERSIONS)
      end
      alias :yard :yards
      alias :yd :yards
      alias :yds :yards
    end 
  end
end