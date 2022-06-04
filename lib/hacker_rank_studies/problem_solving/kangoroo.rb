# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # The problem description
    # https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=true
    class Kangoroo
      attr_accessor :first_position, :first_rate, :second_position, :second_rate

      def initialize(first_position, first_rate, second_position, second_rate)
        @first_position = first_position
        @first_rate = first_rate
        @second_position = second_position
        @second_rate = second_rate
      end

      def should_same_possition?
        return 'YES' if first_position < second_position && first_rate > second_rate

        return 'YES' if first_position > second_position && first_rate < second_rate

        'NO'
      end
    end
  end
end
