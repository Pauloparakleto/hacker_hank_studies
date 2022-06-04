RSpec.describe HackerRankStudies::ProblemSolving::Kangoroo do
  describe '#should_same_possition' do
    it 'is YES' do
      possition_and_rate = [2, 1, 1, 2]
      expect(described_class.new(possition_and_rate).should_same_possition?).to eq('YES')
    end

    it 'is NO' do
      possition_and_rate = [0, 3, 4, 2]
      expect(described_class.new(possition_and_rate).should_same_possition?).to eq('NO')
    end
  end
end
