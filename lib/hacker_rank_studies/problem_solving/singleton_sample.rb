# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    class SingletonSample
      attr_accessor :keep, :strip

      private_class_method :new
      def self.instance
        @instance ||= new
      end

      def _dump(depth = -1)
        ''
      end

      def _load(str)
        ''
      end

      def clone
        raise TypeError, "can't clone instance of singleton #{self.class}"
      end

      def dup
        raise TypeError, "can't dup instance of singleton #{self.class}"
      end
    end
  end
end
