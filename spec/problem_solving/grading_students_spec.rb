RSpec.describe HackerRankStudies::ProblemSolving::GradindStudents do
    let(:original_grades){ [73, 67, 38, 33] }
    subject(:correct_initialize){ described_class.new(original_grades) }
    
    describe '#initialize' do
        context 'when input is correct' do
            it 'is truthy' do
                expect(described_class.new(original_grades)).to be_truthy
            end
        end
    end

    describe '#original_grades' do
        it 'returns original_grade as it is' do
            expect(correct_initialize.original_grades).to eq(original_grades)
        end
    end

    describe '#final_grade' do
        it '[75, 67, 40, 33]' do
            expect(correct_initialize.final_grade).to eq([75, 67, 40, 33])
        end
    end

    describe '#final_grade' do
        context 'when grade is less than 38' do
            let(:grade_less_than_38){ [37, 0, 20] }
            subject(:grade_student_less_than_38) { described_class.new(grade_less_than_38) }
            
            it 'returns final grade equal original grade' do
                expect(grade_student_less_than_38.final_grade).to eq(grade_less_than_38)
            end
        end
    end
end