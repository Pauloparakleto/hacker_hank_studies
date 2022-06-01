# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # https://www.hackerrank.com/challenges/grading/problem?isFullScreen=true
    # the discussion about UtilityFunction reek https://github.com/troessner/reek/issues/681
    # TODO: next release apply rubycritic, the utility function smell is just a suggestion to keep your eye opened 
    # It is like "hey, should be better if you move this method to another class?"
    # Any way, you need OOP principles.
    class GradindStudents
      attr_accessor :original_grades

      STANDARD_GRADE = 38
      STANDARD_DIFFERENCE_BETWEEN_NEXT_MULTIPLE_OF5 = 3

      def initialize(original_grades)
        @original_grades = original_grades
      end

      def final_grade
        original_grades.map do |grade|
          if grade_less_than_standard_grade(grade)
            grade
          else
            round(grade)
          end
        end
      end

      def round(grade)
        next_multiple_of5 = ((grade / 10) * 10) + 5
        rest = grade % 10
        next_multiple_of5 += 5 if rest > 5

        diff = next_multiple_of5 - grade
        if diff < STANDARD_DIFFERENCE_BETWEEN_NEXT_MULTIPLE_OF5
          next_multiple_of5
        else
          grade
        end
      end

      def grade_less_than_standard_grade(grade)
        grade if grade < STANDARD_GRADE
      end
    end
  end
end
