require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do 
    @final = PigLatinizer.new.piglatinize(params[:user_phrase])
    # binding.pry
    erb :output
  end


end