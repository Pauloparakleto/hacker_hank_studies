# frozen_string_literal: true

RSpec.describe HackerRankStudies::ProblemSolving::SingletonSample do
  describe "#new" do
    it 'raises error' do
      expect{described_class.new}.to raise_error(NoMethodError)
    end
  end

  describe "#instance" do
    context 'when out of thread' do
      it 'returns zero objects in space' do
        expect(ObjectSpace.each_object(described_class){}).to be(0)
      end

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

      it 'returns 1 object in space' do
        described_class.instance
        described_class.instance

        expect(ObjectSpace.each_object(described_class){}).to be(1)
      end
    end

    context 'when initialized in a thread' do
      it 'returns 1 object in space' do
        threads = []
        threads << Thread.new { described_class.instance }
        threads << Thread.new { described_class.instance }
        threads.each(&:join)

        expect(ObjectSpace.each_object(described_class){}).to be(1)
      end
    end
  end

  describe "#clone" do
    it "raises TypeError" do
      a = described_class.instance

      expect{ a.clone }.to raise_error(TypeError)
    end
  end

  describe "#dup" do
    it "raises TypeError" do
      a = described_class.instance

      expect{ a.dup }.to raise_error(TypeError)
    end
  end

  describe "#_dump" do
    it 'returns empty string' do
      expect(described_class.instance._dump).to eql("")
    end
  end

  describe "#keep=" do
    it 'returns variable set' do
      a = described_class.instance

      expect(a.keep = "Keep this").to eql("Keep this")
    end
  end

  describe "#keep" do
    it 'gets value' do
      a = described_class.instance
      a.keep = "Keep this"

      expect(a.keep).to eql("Keep this")
    end
  end

  describe "#strip=" do
    it 'returns variable set' do
      a = described_class.instance

      expect(a.strip = "Get rid of this").to eql("Get rid of this")
    end
  end

  describe "#strip" do
    it 'gets value' do
      a = described_class.instance
      a.strip = "Get rid of this"

      expect(a.strip).to eql("Get rid of this")
    end
  end

  describe "#Marchal.dump" do
    xit "conditions" do
      a = described_class.instance
      a.keep = "Keep this"
      a.strip = "Get rid of this"

      stored_state = Marshal.dump(a)

      a.keep = nil
      a.strip = nil

      b = Marshal.load(stored_state)

      expect(a).to eql(b)
      expect(a.keep).to eql("Keep this")
      expect(a.strip).to be_nil
    end
  end
end
