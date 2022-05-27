RSpec.describe HackerRankStudies::ProblemSolving::GradindStudents do
    describe '#initialize' do
        context 'when input is correct' do
            let(:original_grades){ [73, 67, 38, 33] }

            it 'is truthy' do
                expect(described_class.new(original_grades)).to be_truthy
            end
        end
    end
end