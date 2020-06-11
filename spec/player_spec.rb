require './lib/player.rb'
require './lib/logic.rb'

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

    it 'confirms the possible game with empty player`s name' do
      player = Player.new(' ', 'X')
      expect(player.instance_variable_get(:@name)).to eq(' ')
    end

    it 'confirms the possible game with the same player`s name' do
      player = Player.new('pok', 'pok')
      expect(@player1.instance_variable_get(:@name) == @player2.instance_variable_get(:@name)).to eq(true)
    end
  end
end
