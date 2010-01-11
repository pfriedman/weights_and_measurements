module Unit #:nodoc:
  module Numeric #:nodoc:
    module Metric
      module Length

        BASE = :metre

        KNOWN_CONVERSIONS = { 
          :metre => 1, :metres => 1, :meter => 1, :meters => 1, 
          :decimeter => 10, :decimeters => 10,
          :decimetre => 10, :decimetres => 10,
          :centimeter => 100, :centimeters => 100, :cm => 100,
          :centimetre => 100, :centimetres => 100, :cms => 100,
          :millimeter => 1000, :millimeters => 1000, :mm => 1000,
          :millimetre => 1000, :millimetres => 1000, :mms => 1000,
          :micrometer => 1000000, :micrometers => 1000000,
          :micrometre => 1000000, :micrometres => 1000000,
          :nanometer => 1000000000, :nanometers => 1000000000,
          :nanometre => 1000000000, :nanometres => 1000000000,
          :picometer => 1000000000000, :picometers => 1000000000000,
          :picometre => 1000000000000, :picometres => 1000000000000,
          :femtometer => 1000000000000000, :femtometers => 1000000000000000,
          :femtometre => 1000000000000000, :femtometres => 1000000000000000,
          :decameter => 0.1, :decameters => 0.1,
          :decametre => 0.1, :decametres => 0.1,
          :hectometer => 0.01, :hectometers => 0.01,
          :hectometre => 0.01, :hectometres => 0.01,
          :kilometer => 0.001, :kilometers => 0.001,
          :kilometre => 0.001, :kilometres => 0.001,
          :megameter => 0.000001, :megameters => 0.000001,
          :megametre => 0.000001, :megametres => 0.000001,
        }

        def megametres
          Unit::Measurement.new(self, :megametre, BASE, {BASE => 1000000})
        end
        alias :megameter :megametres
        alias :megametre :megametres
        alias :megameters :megametres

        def kilometres
          Unit::Measurement.new(self, :kilometre, BASE, {BASE => 1000})
        end
        alias :kilometer :kilometres
        alias :kilometre :kilometres
        alias :kilometers :kilometres

        def hectometres
          Unit::Measurement.new(self, :decametre, BASE, {BASE => 100})
        end
        alias :hectometer :hectometres
        alias :hectometre :hectometres
        alias :hectometers :hectometres

        def decametres
          Unit::Measurement.new(self, :decametre, BASE, {BASE => 10})
        end
        alias :decameter :decametres
        alias :decametre :decametres
        alias :decameters :decametres
      
        def meters
          Unit::Measurement.new(self, :metre, BASE, KNOWN_CONVERSIONS)
        end
        alias :meter :meters
        alias :metre :meters
        alias :metres :meters

        def decimetres
          Unit::Measurement.new(self, :decimetre, BASE, {BASE => 0.1})
        end
        alias :decimeter :decimetres
        alias :decimetre :decimetres
        alias :decimeters :decimetres

        def centimetres
          Unit::Measurement.new(self, :centimetre, BASE, {BASE => 0.01})
        end
        alias :cm :centimetres
        alias :cms :centimetres
        alias :centimeter :centimetres
        alias :centimetre :centimetres
        alias :centimeters :centimetres

        def millimetres
          Unit::Measurement.new(self, :millimetre, BASE, {BASE => 0.001})
        end
        alias :mm :millimetres
        alias :mms :millimetres
        alias :millimeter :millimetres
        alias :millimetre :millimetres
        alias :millimeters :millimetres

        def micrometres
          Unit::Measurement.new(self, :micrometre, BASE, {BASE => 0.000001})
        end
        alias :micrometer :micrometres
        alias :micrometre :micrometres
        alias :micrometers :micrometres

        def nanometres
          Unit::Measurement.new(self, :nanometre, BASE, {BASE => 0.000000001})
        end
        alias :nanometer :nanometres
        alias :nanometre :nanometres
        alias :nanometers :nanometres
        
        def picometres
          Unit::Measurement.new(self, :nanometre, BASE, {BASE => 0.000000000001})
        end
        alias :picometer :picometres
        alias :picometre :picometres
        alias :picometers :picometres
        
        def femtometres
          Unit::Measurement.new(self, :femtometre, BASE, {BASE => 0.000000000000001})
        end
        alias :femtometer :femtometres
        alias :femtometre :femtometres
        alias :femtometers :femtometres

      end
    end
  end
end