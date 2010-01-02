module Unit #:nodoc:
  module Numeric #:nodoc:
    module Inch
      
      BASE = :inch
      
      KNOWN_CONVERSIONS = { 
        :inch => 1.0, :inches => 1.0, :in => 1.0,
        :yard => 1.0/36.0, :yards => 1.0/36.0, :yd => 1.0/36.0, :yds => 1.0/36.0, 
        :foot => 1.0/12.0, :feet => 1.0/12.0, :ft => 1.0/12.0,
        :centimeter => 2.54, :centimeters => 2.54, :cm => 2.54, 
        :centimetre => 2.54, :centimetres => 2.54, :cms => 2.54 }
      
      def inches
        Unit::Measurement.new(self, :inch, :inch, KNOWN_CONVERSIONS)
      end
      alias :inch :inches
      alias :in :inches
    end
  end
end
