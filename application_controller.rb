require 'bundler'
require_relative 'models/model.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
post '/input' do
#    puts "this is #{params}"
    num = params[:input_string]
    addNum(num)
    erb :input
  end

post '/sent' do
  right_pass="correct"
  pass=params[:password]
  response = params[:fact]
  if pass==right_pass
    @response="thanks"
    massText
    newFact(response)
    #other stuff that actually updates catfacts
  else
    @response = "You're not Emily..."
  end
  erb :sent
end

end