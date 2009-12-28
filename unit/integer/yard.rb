module Unit #:nodoc:
  module Integer #:nodoc:
    module Yard
      def yards
        Unit::Measurement.new(self, [[:yards, self]])
      end
      alias :yard :yards
    end 
  end
end