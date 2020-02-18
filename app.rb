require_relative 'config/environment'
require_relative 'models/piglatinizer'


class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
  @pig_text = PigLatinizer.new
 
  erb :results
  end
end
