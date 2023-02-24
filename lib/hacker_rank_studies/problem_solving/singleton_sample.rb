# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    class SingletonSample
      private_class_method :new
      def self.instance
        @instance ||= new
      end
    end
  end
end
