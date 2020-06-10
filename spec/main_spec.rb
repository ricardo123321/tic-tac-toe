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
  let(:beg) { Player.new('mike') }
  describe 'initialize' do
    it 'confirms new players game' do
      expect( beg.name ).to eql('mike')
    end

    it 'confirms new players game' do
      expect( beg.move ).to eql([])
    end
  end

end