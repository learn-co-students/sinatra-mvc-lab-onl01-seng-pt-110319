require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @p_l_instance = PigLatinizer.new
        erb :final_output
    end
end