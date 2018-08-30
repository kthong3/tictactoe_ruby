require_relative "../game"

describe Game do
  let(:game) { Game.new }

  context "when a new game is initialized" do
    it "initializes a board" do
      expect(game.board).to eq []
    end

    it "has an empty board" do
      expect(game.board.empty?).to be true
    end
  end

  context "when the game begins"
    describe "#start"
    describe "#turn"
    describe "#ask_for_location"
    describe "#did_win?"
    describe "#declare_winner"
    describe "#over?"

  end
end