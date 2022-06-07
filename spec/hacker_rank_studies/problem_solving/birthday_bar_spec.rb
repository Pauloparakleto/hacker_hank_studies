RSpec.describe HackerRankStudies::ProblemSolving::BirthdayBar do
  context 'when day is 3 and month is 2' do
    let(:day) { 3 }
    let(:month) { 2 }

    it 'is 2' do
      chocolate_bar = [1, 2, 1, 3, 2]

      result = described_class.new(chocolate_bar, day, month).count_division_posibilities

      expect(result).to eq(2)
    end

    it 'is 0' do
      chocolate_bar = [1, 1, 1, 1, 1]

      result = described_class.new(chocolate_bar, day, month).count_division_posibilities

      expect(result).to eq(0)
    end
  end

  context 'when day is 4 and month is 1' do
    let(:day) { 4 }
    let(:month) { 1 }

    it 'is 1' do
      chocolate_bar = [4]

      result = described_class.new(chocolate_bar, day, month).count_division_posibilities

      expect(result).to eq(1)
    end
  end
end