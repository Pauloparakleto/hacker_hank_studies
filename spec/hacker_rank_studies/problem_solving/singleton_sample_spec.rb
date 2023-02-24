# frozen_string_literal: true

RSpec.describe HackerRankStudies::ProblemSolving::SingletonSample do
  describe "#new" do
    it 'raises error' do
      expect{described_class.new}.to raise_error(NoMethodError)
    end
  end

  describe "#instance" do
    # a == b => true
    it 'returns described class' do
      expect(described_class.instance).to be_an_instance_of(
                                            HackerRankStudies::ProblemSolving::SingletonSample
                                          )
    end

    it 'is the same exactly instance' do
      a = described_class.instance
      b = described_class.instance

      expect(a).to eql(b)
    end

    it 'returns zero objects in space' do
      expect(ObjectSpace.each_object(described_class){}).to eql(0)
    end

    it 'returns 1 object in space' do
      described_class.instance
      described_class.instance

      expect(ObjectSpace.each_object(described_class){}).to eql(1)
    end
  end
end
