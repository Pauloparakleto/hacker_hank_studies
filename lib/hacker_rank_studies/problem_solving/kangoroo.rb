# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # The problem description
    # https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=true

    # "We want to read the code like a narrative, from the top to bottom.
    # Cleand Code, p. 37 portuguese version, Alta Books editora"
    class Kangoroo
      attr_reader :first_position, :first_rate, :second_position, :second_rate

      def initialize(first_position, first_rate, second_position, second_rate)
        @first_position = first_position
        @first_rate = first_rate
        @second_position = second_position
        @second_rate = second_rate
      end

      def should_same_possition?
        return 'NO' if same_rate?

        return 'NO' unless number_of_jumps_positive?

        return 'NO' unless module_number_of_jumps_zero?

        'YES'
      end

      private

      def same_rate?
        second_rate.eql? first_rate
      end

      def number_of_jumps_positive?
        number_of_jumps.positive?
      end

      def number_of_jumps
        (first_position - second_position) / (second_rate - first_rate)
      end

      def module_number_of_jumps_zero?
        module_number_of_jumps.zero?
      end

      def module_number_of_jumps
        (first_position - second_position) % (second_rate - first_rate)
      end
    end
  end
end
