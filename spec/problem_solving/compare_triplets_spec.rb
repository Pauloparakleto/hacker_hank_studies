# frozen_string_literal: true

# The problem
# https://www.hackerrank.com/challenges/compare-the-triplets/problem?isFullScreen=true
RSpec.describe HackerRankStudies::ProblemSolving::CompareTriplets do
  describe 'initialize' do
    it 'is truthy' do
      alice_score = [4, 6, 7]
      bob_score = [3, 6, 10]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_score, bob_score)
      expect(result).to be_truthy
    end
  end

  describe '#first_scores' do
    it 'is alice_scores' do
      alice_scores = [4, 6, 7]
      bob_scores = [3, 6, 10]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_scores, bob_scores).first_scores
      expect(result).to eq(alice_scores)
    end
  end

  describe '#second_scores' do
    it 'is bob_scores' do
      alice_scores = [4, 6, 7]
      bob_scores = [3, 6, 10]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_scores, bob_scores).second_scores
      expect(result).to eq(bob_scores)
    end
  end

  describe '#scores' do
    it 'is [0, 0]' do
      alice_scores = [4, 6, 7]
      bob_scores = [3, 6, 10]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_scores, bob_scores).scores
      expect(result).to eq([0, 0])
    end
  end

  describe 'compare' do
    it 'is [1, 1]' do
      alice_scores = [4, 6, 7]
      bob_scores = [3, 6, 10]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_scores, bob_scores).compare

      expect(result).to eq([1, 1])
    end

    it 'is [2, 1]' do
      alice_scores = [17, 28, 30]
      bob_scores = [99, 16, 8]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_scores, bob_scores).compare

      expect(result).to eq([2, 1])
    end

    it 'is [3, 0]' do
      alice_scores = [100, 18, 10]
      bob_scores = [99, 16, 8]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_scores, bob_scores).compare

      expect(result).to eq([3, 0])
    end

    it 'is [0, 3]' do
      alice_scores = [99, 16, 8]
      bob_scores = [100, 18, 10]

      result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_scores, bob_scores).compare

      expect(result).to eq([0, 3])
    end
  end
end
