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

    describe '#first_score' do
        it 'is alice_score' do
            alice_score = [4, 6, 7]
            bob_score = [3, 6, 10]

            result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_score, bob_score).first_score
            expect(result).to eq(alice_score)
        end
    end

    describe '#second_score' do
        it 'is bob_score' do
            alice_score = [4, 6, 7]
            bob_score = [3, 6, 10]

            result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_score, bob_score).second_score
            expect(result).to eq(bob_score)
        end
    end

    describe 'compare' do
        it 'is [1, 1]' do
            alice_score = [4, 6, 7]
            bob_score = [3, 6, 10]

            result = HackerRankStudies::ProblemSolving::CompareTriplets.new(alice_score, bob_score).compare
            
            expect(result).to eq([1, 1])
        end
    end
end