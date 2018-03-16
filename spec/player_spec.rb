require_relative "../player"

describe Player do
  let(:player) { Player.new("Player Three", "K") }

  it "has a player_number" do
    expect(player.player_number). to eq "Player Three"
  end

  it "has a letter" do
    expect(player.letter).to eq "K"
  end

  it "has an empty location set" do
    expect(player.location_set). to eq []
    expect(player.location_set.empty?).to be true
  end

end