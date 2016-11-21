require('sinatra')
require('sinatra/contrib/all')
require_relative('models/rock')
require('json')


get '/:weapon' do
weapon = params[:weapon]
game1 = Rockgame.new(weapon)
game_result =game1.play
@result = "You played #{weapon} and I played #{game1.combat}. You #{game_result}"
erb(:result)
end