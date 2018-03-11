require_relative "../game"

describe Game do
  let(:game) { Game.new }

  describe 'board structure' do
    describe '#board' do
      it 'is an array' do
        expect(game.send :board).to be_an Array
      end

      it 'is empty' do
        expect(game.send :board.length).to eq 0
      end
    end

    describe '#generate_board' do
      it 'creates board with 3 rows'
    end
  end
end