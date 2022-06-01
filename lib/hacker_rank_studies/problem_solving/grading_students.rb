# frozen_string_literal: true

module HackerRankStudies
  module ProblemSolving
    # https://www.hackerrank.com/challenges/grading/problem?isFullScreen=true

    class GradindStudents
      attr_accessor :original_grades

      STANDARD_GRADE = 38
      STANDARD_DIFFERENCE_BETWEEN_NEXT_MULTIPLE_OF5 = 3

      def initialize(original_grades)
        @original_grades = original_grades
      end

      def final_grade
        original_grades.map do |grade|
          if is_grade_less_than_standard_grade(grade)
            grade
          else
            next_multiple_of5 = (grade / 10) * 10 + 5
            rest = grade % 10
            next_multiple_of5 += 5 if rest > 5

            diff = next_multiple_of5 - grade
            if diff < 3
              next_multiple_of5
            else
              grade
            end
          end
        end
      end

      def is_grade_less_than_standard_grade(grade)
        grade if grade < STANDARD_GRADE
      end
    end
  end
end
