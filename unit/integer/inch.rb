module Unit #:nodoc:
  module Integer #:nodoc:
    module Inch
      def inches
        Unit::Measurement.new(self, [[:inches, self]])
      end
      alias :inch :inches
    end
  end
end
