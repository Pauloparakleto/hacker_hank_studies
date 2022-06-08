# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # Problem description
    # https://www.hackerrank.com/challenges/the-birthday-bar/problem?isFullScreen=true
    class BirthdayBar
      attr_reader :chocolate_bar, :day, :month, :counter

      def initialize(chocolate_bar, day, month)
        @chocolate_bar = chocolate_bar
        @day = day
        @month = month
        @counter = counter
      end

      def count_division_posibilities
        return chocolate_bar.count(day) if month.eql?(1)

        counter = 0

        chocolate_bar.combination(month).to_a.uniq.each do |chocolate|
          counter += 1 if chocolate.sum.eql?(day)
        end

        counter
      end
    end
  end
end
