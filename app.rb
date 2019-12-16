require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
  get '/' do
    
    erb :'pirates/new'
  end
  
  post '/pirates/show' do
    @pirate = Pirate.all(params[:pirate])
    @ship = Ship.all(params[:ship])
  
    erb :'pirates/show'
  end
  end
end
