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
  end
end
