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

Dotenv.load

class GotDeadpool < Sinatra::Base
enable :sessions

  get '/' do
    @deadpool = Deadpool.find_by(name: "Jon's negativity")

    erb :index
  end


end
