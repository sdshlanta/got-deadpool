require 'sinatra'
require 'dotenv'
require 'sinatra/activerecord'
require './config/environments'
require './model/character'
require './model/deadpool'
require './model/player'
require './model/slot'
require 'button'
require 'money'
require 'json'
require 'byebug'
require 'sinatra/flash'
require 'numbers_in_words'

Dotenv.load

class GotDeadpool < Sinatra::Base
enable :sessions
register Sinatra::Flash

  get '/' do
    @deadpool = Deadpool.find_by(name: "Jon's negativity")
    @num_players = NumbersInWords.in_words(@deadpool.players.count)

    erb :index
  end


  get '/create' do
    @characters = Character.all.order('name ASC')
    erb :create
  end

  post '/create' do
    ## check if duplicates or errors
    result = Slot.check_unique_slots(params)
    ## if all ok
    if result == true
      deadpool = Deadpool.create_deadpool(params)
      redirect "/#{deadpool.id}"
    ## if there isn't enough characters per player or there are duplicates
    else
      flash[:error] = result
      redirect '/create'
    end
  end

  get '/all' do
    @deadpools = Deadpool.all

    erb :all
  end

  get '/error' do
    erb :error
  end

  get '/api/:deadpool_id' do
    content_type :json

    Deadpool.api_payload(params[:deadpool_id])
  end

  get '/:deadpool_id' do
    @deadpool = Deadpool.find_by(id: params[:deadpool_id])
    redirect '/error' if @deadpool.nil?

    @num_players = NumbersInWords.in_words(@deadpool.players.count)

    erb :index
  end

end
