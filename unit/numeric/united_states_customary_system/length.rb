module Unit #:nodoc:
  module Numeric #:nodoc:
    module UnitedStatesCustomarySystem
      module Length

        BASE = :inch

        KNOWN_CONVERSIONS = { 
          :inch => 1.0, :inches => 1.0, :in => 1.0,
          :yard => 1.0/36.0, :yards => 1.0/36.0, :yd => 1.0/36.0, :yds => 1.0/36.0, 
          :foot => 1.0/12.0, :feet => 1.0/12.0, :ft => 1.0/12.0,
          :centimeter => 2.54, :centimeters => 2.54, :cm => 2.54, 
          :centimetre => 2.54, :centimetres => 2.54, :cms => 2.54 }
      
        def inches
          Unit::Measurement.new(self, :inch, BASE, KNOWN_CONVERSIONS)
        end
        alias :inch :inches
        alias :in :inches
      
        def feet
          Unit::Measurement.new(self, :foot, BASE, {BASE => 12.0})
        end
        alias :foot :feet
        alias :ft :feet
        
        def yards
          Unit::Measurement.new(self, :yard, BASE, {BASE => 36.0})
        end
        alias :yard :yards
        alias :yd :yards
        alias :yds :yards
        
        def cubits
          Unit::Measurement.new(self, :cubit, BASE, {BASE => 18.0})
        end
        alias :cubit :cubits
        
        def hands
          Unit::Measurement.new(self, :hand, BASE, {BASE => 4.0})
        end
        alias :hand :hands
        
        def miles
          Unit::Measurement.new(self, :mile, BASE, {BASE => 63360.0})
        end
        alias :mile :miles

        # TODO
        def ell
          
        end
        
        # TODO
        def fathom
          
        end
        
      end
    end
  end
end