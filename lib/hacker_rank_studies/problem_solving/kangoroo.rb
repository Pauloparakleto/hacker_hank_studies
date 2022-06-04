module HackerRankStudies
  module ProblemSolving
    class Kangoroo
      attr_accessor :possition_and_rate

      def initialize(possition_and_rate)
        @possition_and_rate = possition_and_rate
      end

      def should_same_possition?
        first_position = possition_and_rate.first
        first_rate = possition_and_rate[1]
        second_position = possition_and_rate[2]
        second_rate = possition_and_rate.last

        first_expected_position = (second_position * second_rate) / first_rate

        return 'YES' if first_position.eql?(first_expected_position)

        'NO'
      end
    end
  end
end
