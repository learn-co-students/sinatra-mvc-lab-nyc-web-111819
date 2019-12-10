require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig = PigLatinizer.new
    binding.pry
    @pig.text = (params[:user_phrase])
    # binding.pry
    erb :results
  end
end