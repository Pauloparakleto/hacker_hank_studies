# frozen_string_literal: true

RSpec.describe HackerRankStudies::ProblemSolving::Kangoroo do
  describe '#should_same_possition' do
    context 'when position 1 is bigger than position 2 AND rate 2 is bigger than rate 1' do
      let(:first_position) { 0 }
      let(:first_rate) { 3 }
      let(:second_position) { 4 }
      let(:second_rate) { 2 }

      it 'is YES' do
        expect(described_class.new(first_position, first_rate, second_position, second_rate)
        .should_same_possition?).to eq('YES')
      end
    end

    context 'when position 1 is less than position 2 AND rate 2 is bigger than rate 1' do
      let(:first_position) { 0 }
      let(:first_rate) { 2 }
      let(:second_position) { 5 }
      let(:second_rate) { 3 }

      it 'is NO' do
        expect(described_class.new(first_position, first_rate, second_position, second_rate)
        .should_same_possition?).to eq('NO')
      end
    end

    context 'when [21, 6, 47, 3]' do
      let(:first_position) { 21 }
      let(:first_rate) { 6 }
      let(:second_position) { 47 }
      let(:second_rate) { 3 }

      it 'is NO' do
        expect(described_class.new(first_position, first_rate, second_position, second_rate)
        .should_same_possition?).to eq('NO')
      end
    end

    context 'when [4181, 3976, 6312, 988]' do
      let(:first_position) { 4181 }
      let(:first_rate) { 3976 }
      let(:second_position) { 6312 }
      let(:second_rate) { 988 }

      it 'is NO' do
        expect(described_class.new(first_position, first_rate, second_position, second_rate)
        .should_same_possition?).to eq('NO')
      end
    end

    context 'when [1571, 4240, 9023, 4234]' do
      let(:first_position) { 1571 }
      let(:first_rate) { 4240 }
      let(:second_position) { 9023 }
      let(:second_rate) { 4234 }

      it 'is YES' do
        expect(described_class.new(first_position, first_rate, second_position, second_rate)
        .should_same_possition?).to eq('YES')
      end
    end
  end
end
