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
          return chocolate_bar.count(day)
        end

        @counter = 0

        chocolate_bar.combination(month).to_a.uniq.each do | chocolate |
          @counter += 1 if chocolate.sum.eql?(day)
        end

        @counter
      end
    end
  end
end
  