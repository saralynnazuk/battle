require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    $Player_1 = Player.new(params[:Player_1])
    $Player_2 = Player.new(params[:Player_2])
    redirect '/play'
  end

  get '/play' do
    p $Player_1.name
    p $Player_2.name
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

  run! if app_file == $0
end
