require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rock')
require('pry-byebug')

class TestGame < Minitest::Test

  def setup
    @game1 = Rockgame.new('bomb')
  end

  def test_bomb
    assert_equal("win", @game1.play)
  end

  #def test_scissors_on_paper
  #  assert_equal("win", @game1.play)
  #end
end 