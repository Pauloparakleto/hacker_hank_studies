module HackerRankStudies
  module ProblemSolving
    # Problem description
    # https://www.hackerrank.com/challenges/birthday-cake-candles/problem?isFullScreen=true
    class BirthdayCakeCandles
      def initialize(array)
        @array = array
      end

      def count_biggest_number
        maximum_number = @array.max
        @array.count maximum_number
      end
    end
  end
end
