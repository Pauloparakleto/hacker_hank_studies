module HackerRankStudies
  module ProblemSolving
    # https://www.hackerrank.com/challenges/bomber-man/problem?isFullScreen=true
    class BomberMan
      attr_accessor :n_seconds, :initial_state, :final_state

      def initialize(n_seconds, grid)
        @n_seconds = n_seconds
        @initial_state = grid
        @final_state = @initial_state
      end

      def call
        return if n_seconds.eql?(1)
      end
    end
  end
end