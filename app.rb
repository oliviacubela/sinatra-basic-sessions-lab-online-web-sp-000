require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/checkout' do
    session["item"] = @item
    @session = "session"
  end
  
  configure do
    enable :sessions
    set :session_secret, "2116multnomah1995"
  end
end

# get '/hey' do
#   session["name"] = "Victoria"
#   @session = session
# end
