# The problem description
# https://www.hackerrank.com/challenges/birthday-cake-candles/problem?isFullScreen=true

RSpec.describe HackerRankStudies::ProblemSolving::BirthdayCakeCandles do
  it 'is 2' do
    candles = [4, 4, 1, 3]
    expect(described_class.new(candles).count_biggest_number).to eq(2)
  end

  it 'is 2' do
    candles = [3, 2, 1, 3]
    expect(described_class.new(candles).count_biggest_number).to eq(2)
  end
end
