# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # The Design Pattern in Ruby chapter 1 topic Preffer composition over inheritance
    # The main idea here it if the objective is building software uncoupled where we can
    # change things isolated, relying only in inheritance has a problem since a single change
    # in super class would affect all its subclasses.
    # The example here is about a vehicle composition rather than an inheritance.
    class Car
      def initialize
        @engine = ProblemSolving::Engine.new
      end

      def sunday_drive
        start_engine
        stop_engine
        'Drove and returned'
      end

      def start_engine
        @engine.start_engine
      end

      def stop_engine
        @engine.stop_engine
      end
    end
  end
end
