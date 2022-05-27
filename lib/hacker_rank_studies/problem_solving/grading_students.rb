module HackerRankStudies
    module ProblemSolving
        # https://www.hackerrank.com/challenges/grading/problem?isFullScreen=true

        class GradindStudents
            attr_accessor :original_grades

            STANDARD_GRADE = 38

            def initialize(original_grades)
                @original_grades = original_grades
            end

            def final_grade
                original_grades.map do |grade|
                    grade if is_grade_less_than_standard_grade(grade)
                end
            end

            def is_grade_less_than_standard_grade(grade)
                grade if grade < STANDARD_GRADE
            end
        end
    end
end