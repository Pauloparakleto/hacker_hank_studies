# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # The problem description
    # https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=true
    class Kangoroo
      attr_reader :first_position, :first_rate, :second_position, :second_rate

      def initialize(first_position, first_rate, second_position, second_rate)
        @first_position = first_position
        @first_rate = first_rate
        @second_position = second_position
        @second_rate = second_rate
      end

      def should_same_possition?
        return 'NO' if second_rate.eql? first_rate

        module_number_of_jumps = (first_position - second_position) % (second_rate - first_rate)
        number_of_jumps = (first_position - second_position) / (second_rate - first_rate)

        return 'NO' unless number_of_jumps.positive?

        return 'NO' unless module_number_of_jumps.zero?

        'YES'
      end
    end
  end
end
