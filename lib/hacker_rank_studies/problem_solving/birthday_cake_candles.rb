module HackerRankStudies
  module ProblemSolving
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
