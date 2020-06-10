require './lib/logic.rb'
require './lib/player.rb'

describe Tictactoe do
  let(:gam) { Tictactoe.new }
  describe 'initialize' do
    it 'confirms board is empty' do
      expect(gam.board).to eql([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end

    it 'confirms win1 to be false' do
      expect(gam.win1).to be(false)
    end

    it 'confirms win2 to be false' do
      expect(gam.win2).to be(false)
    end

    it 'confirms answer to be empty' do
      expect(gam.answer).to eql('')
    end

    it 'confirms draw to be false' do
      expect(gam.draw).to be(false)
    end
  end
end

describe Player do
  describe '#initialize' do
    it 'confirms new players game' do
      player = Player.new('mike', 'X')
      expect(player.instance_variable_get(:@name)).to eq('mike')
    end
    it 'confirms new players game' do
      player = Player.new('mike', 'X')
      expect(player.instance_variable_get(:@move)).to eq('X')
    end
  end
end
