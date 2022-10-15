# frozen_string_literal: true

RSpec.describe HackerRankStudies::ProblemSolving::BomberMan do
  # the initialize for one bomb
  # the map for one explosion
  subject(:initialize_with_one_bomb) { described_class.new(n_seconds, one_bomb_simple_grid) }

  let(:n_seconds){ 1 }
  let(:one_bomb_simple_grid){ ['...', '.O.', '...'] }

  describe '#initialize' do
    it 'is thuthy' do
      expect(initialize_with_one_bomb).to be_truthy
    end
  end

  describe '#initial_state' do
    it 'is equal to one_bomb_simple_grid' do
      expect(initialize_with_one_bomb.initial_state).to eq(one_bomb_simple_grid)
    end
  end

  describe '#final_state' do
    context 'when given 1 second' do
      it 'is equal to initial_state' do
        expect(initialize_with_one_bomb.final_state).to eq(one_bomb_simple_grid)
      end
    end

    context 'when given 2 seconds' do
      let(:simple_grid_fulled_of_bomb) { ['OOO', 'OOO', 'OOO'] }

      it 'is equal grid fulled of bomb' do
        expect(initialize_with_one_bomb.final_state).to eq(simple_grid_fulled_of_bomb)
      end
    end
  end

  describe '#call' do
    context 'when given 1 second' do
      it 'returns final_state equal to initial_state' do
        initialize_with_one_bomb.call

        expect(initialize_with_one_bomb.final_state).to eq(initialize_with_one_bomb.initial_state)
      end
    end

    context 'when given 2 seconds' do
      let(:n_seconds) { 2 }
      let(:simple_grid_fulled_of_bomb) { ['OOO', 'OOO', 'OOO'] }

      it 'has final_state equal to grid_fulled_of_bomb' do
        initialize_with_one_bomb.call

        expect(initialize_with_one_bomb.final_state).to eq(simple_grid_fulled_of_bomb)
      end

      it 'has final_state not equal to initial_state' do
        initialize_with_one_bomb.call

        expect(initialize_with_one_bomb.final_state).not_to eq(initialize_with_one_bomb.initial_state)
      end
    end
  end
end
  