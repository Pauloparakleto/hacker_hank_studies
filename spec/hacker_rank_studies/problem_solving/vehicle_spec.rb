# frozen_string_literal: true

# The Design Pattern in Ruby chapter 1 topic Preffer composition over inheritance
# The main idea here it if the objective is building software uncoupled where we can
# change things isolated, relying only in inheritance has a problem since a single change
# in super class would affect all its subclasses.
# The example here is about a vehicle composition rather than an inheritance.

RSpec.describe HackerRankStudies::ProblemSolving::Vehicle do
  describe 'start_engine' do
    it 'stars engine' do
      expect(described_class.new.start_engine).to eq('Engine started')
    end

    it 'stops engine' do
      expect(described_class.new.stop_engine).to eq('Engine stopped')
    end
  end
end
