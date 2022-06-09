# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # Problem description
    # https://www.hackerrank.com/challenges/the-birthday-bar/problem?isFullScreen=true
    class BirthdayBar
      attr_reader :chocolate_bar, :day, :month
      attr_accessor :counter

      def initialize(chocolate_bar, day, month)
        @chocolate_bar = chocolate_bar
        @day = day
        @month = month
        @counter = counter
      end

      def out_of_range?(index)
        (month + index) > chocolate_bar.size
      end

      def can_divide?(chocolate_bar_peace)
        chocolate_bar_peace.sum.eql?(day)
      end

      def count_division_posibilities
        return chocolate_bar.count(day) if month.eql?(1)

        @counter = 0

        chocolate_bar.each_index do |index|
          count_division(chocolate_bar, index)
        end

        @counter
      end

      def count_division(chocolate_bar, index)
        chocolate_bar_peace = chocolate_bar[index...(month + index)]

        @counter += 1 if can_divide?(chocolate_bar_peace)
      end
    end
  end
end
