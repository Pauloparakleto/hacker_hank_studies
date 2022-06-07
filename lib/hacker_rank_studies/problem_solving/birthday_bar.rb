module HackerRankStudies
  module ProblemSolving
    # Problem description
    # https://www.hackerrank.com/challenges/the-birthday-bar/problem?isFullScreen=true
    class BirthdayBar
      attr_accessor :chocolate_bar, :day, :month

      def initialize(chocolate_bar, day, month)
        @chocolate_bar = chocolate_bar
        @day = day
        @month = month
      end

      def count_division_posibilities
        if month.eql?(1)
          chocolate_bar.count(day)
        end
      end
    end
  end
end
  