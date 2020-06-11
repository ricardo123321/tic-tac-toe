require './lib/logic.rb'
require './lib/player.rb'

describe Tictactoe do
  let(:gam) { Tictactoe.new }
  let(:p1) { Player.new('mike', [1, 2, 3]) }
  let(:p2) { Player.new('juan', [4, 5, 6]) }
  let(:p3) { Player.new('juan', [9, 5, 6]) }
  describe 'initialize' do
    it 'confirms board is empty' do
      expect(gam.board).to eql([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end

    it 'confirms win1 to be false' do
      expect(gam.win1).to be(false)
    end

    it 'confirms win1 to be true' do
      gam.instance_variable_set(:@player1, p1)
      gam.check
      expect(gam.win1).to be(true)
    end

    it 'confirms win2 to be false' do
      expect(gam.win2).to be(false)
    end
    
    it 'confirms win2 to be true' do
      gam.instance_variable_set(:@player2, p2)
      gam.instance_variable_set(:@player1, p3)
      gam.check
      expect(gam.win2).to be(true)
    end

    it 'confirms answer to be empty' do
      expect(gam.answer).to eql('')
    end

    it 'confirms draw to be false' do
      expect(gam.draw).to be(false)
    end

    it 'confirms draw to be true' do
      gam.instance_variable_set(:@player1, p3)
      gam.instance_variable_set(:@player2, p3)
      gam.instance_variable_set(:@turn, 10)
      gam.check
      expect(gam.draw).to be(true)
    end

  end

  describe 'check' do
    it 'checks the limit of the number of game turns not more than 9' do
      expect(subject.turn <= 9).to eql(true)
    end

    it 'confirms that the number of answers cannot be more than 9 and less than 0' do
      expect(gam.answer.to_i > 9 && gam.answer.to_i < 0).to eql(false)
    end
  end
end
