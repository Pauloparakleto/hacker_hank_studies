# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # The problem
    # https://www.hackerrank.com/challenges/compare-the-triplets/problem?isFullScreen=true
    class CompareTriplets
      attr_accessor :first_scores, :second_scores, :scores

      def initialize(first_scores, second_scores)
        @first_scores = first_scores
        @second_scores = second_scores
        @scores = [0, 0]
      end

      def compare
        first_scores.each_with_index do |score, index|
          next if score.eql?(second_scores[index])
          
          scores[0] += 1 if score > second_scores[index]

          scores[1] += 1 if score < second_scores[index]
        end

        scores
      end
    end
  end
end
