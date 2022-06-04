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

      def same_rate?
        second_rate.eql? first_rate
      end

      def number_of_jumps_positive?
        number_of_jumps = (first_position - second_position) / (second_rate - first_rate)

        number_of_jumps.positive?
      end

      def module_number_of_jumps_zero?
        module_number_of_jumps = (first_position - second_position) % (second_rate - first_rate)

        module_number_of_jumps.zero?
      end

      def should_same_possition?
        return 'NO' if same_rate?

        return 'NO' unless number_of_jumps_positive?

        return 'NO' unless module_number_of_jumps_zero?

        'YES'
      end
    end
  end
end
