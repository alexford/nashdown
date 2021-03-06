# frozen_string_literal: true

module Nashdown
  module AST
    class Chord
      attr_reader :attributes

      def initialize(attributes)
        @attributes = attributes
        assert_valid!
      end

      def degree
        @attributes[:degree]
      end

      def quality(key: nil)
        @attributes[:quality]
      end

      def ==(other)
        @attributes.sort == other.attributes.sort
      end

      def inspect
        "#{degree} #{quality.to_s.capitalize}".strip
      end

      private

      def assert_valid!
        raise ArgumentError, 'degree attribute must be present' unless degree&.length&.positive?
        raise ArgumentError, 'degree must be within 1-7' unless degree[-1].to_i&.between?(1, 7)
      end
    end
  end
end
