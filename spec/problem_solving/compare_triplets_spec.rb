# The problem
# https://www.hackerrank.com/challenges/compare-the-triplets/problem?isFullScreen=true
RSpec.describe HackerRankStudies::ProblemSolving::CompareTriplets do
    describe 'initialize' do
        it 'is truthy' do
            alice_score = [4, 6, 7]
            bob_score = [3, 6, 10]

            result = CompareTriplets.new
            expect(result).to be_truthy
        end
    end

    describe 'compare' do
        it 'is [1, 1]' do
            alice_score = [4, 6, 7]
            bob_score = [3, 6, 10]

            result = CompareTriplets.new(alice_score, bob_score).compare
            
            expect(result).to eq([1, 1])
        end
    end
end