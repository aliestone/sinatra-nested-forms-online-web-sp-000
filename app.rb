require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
    status 200
    end

    get '/' do
      erb :pirates
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
      Ship.new(details)
      end
      @ships = Ship.all
      erb :'pirates/show'
      end
    end
end
