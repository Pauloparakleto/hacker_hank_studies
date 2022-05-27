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
end