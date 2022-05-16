RSpec.describe HackerRankStudies::ProblemSolving::SimpleArraySum do
    it 'is 6' do
        array_to_sum = [1, 2, 3]
        expect(described_class.new(array_to_sum).sum).to eq(6)
    end

    it 'is 31' do
        array_to_sum = [1, 2, 3, 4, 10, 11]
        expect(described_class.new(array_to_sum).sum).to eq(31)
    end
end