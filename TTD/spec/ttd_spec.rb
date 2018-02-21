require "rspec"
require "ttd_project"
require "towers_of_hanoi"

RSpec.describe Array do

  describe "#my_uniq" do
    context "when called on array"
    it "remove duplicate elements" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end
  end

  describe "#two_sum" do
    subject { [-1, 0, 2, -2, 1] }
    context "whn callen on array"
    it "return all pairs that sum to 0" do
      expect(subject.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    subject { [[0, 1, 2],[3, 4, 5],[6, 7, 8]]}
    context "when passed a matrix"
    it "switches the rows and columns" do
      expect(my_transpose(subject)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe "#stock_picker" do
    subject {[500, 1000, 100, 500, 2000]}

    context "when passed stock prices"
    it "returns the most profitable buy/sell days" do
      expect(stock_picker(subject)).to eq([2,4])
    end
  end

end


RSpec.describe TowersOfHanoi do
  subject(:towers) { TowersOfHanoi.new }
  let(:won_towers){ TowersOfHanoi.new }

  describe "#initialize" do
    context "when initialized"
    it "creates three towers with three disks in the first" do
      expect(towers.towers).to eq([[1,2,3],[],[]])
    end
  end

  describe "#move" do
    context "when given player input"

    it "moves disk from specified tower to other specified tower" do
      towers.move(0, 1)
      expect(towers.towers).to eq([[2,3],[1],[]])
    end
  end

  describe "#valid_move?" do
    context "when trying to place bigger disk on smaller one"
    it "throws an error" do
    towers.move(0,1)
    expect(towers.valid_move?(0,1)).to eq(false)
    end
  end

  describe "#won?" do
    context "when no moves have been made" do
      it "returns false" do
        expect(towers.won?).to eq(false)
      end
    end

    context "when all 3 disks are on tower 2 or 3" do
      it "returns true" do
        allow(won_towers).to receive(:towers).and_return([[],[1,2,3],[]])
        expect(won_towers.won?).to eq(true)
      end
    end
  end

end
