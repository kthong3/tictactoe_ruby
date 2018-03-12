require_relative "../player"

describe Player do
  let(:player) { Player.new("Player Three", "K") }

  it 'has a player_number' do
    expect(player.player_number). to eq "Player Three"
  end

  it 'has a letter' do
    expect(player.letter).to eq "K"
  end
end