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
    massText
    erb :input
  end
=begin
post '/sent' do
  right_pass="correct"
  pass=params[:password]
  fact = params[:fact]
  thanks= "thanks"
  if pass==right_pass
    @resp=thanks
    massText(@cats)
    newFact(@cats,fact)
    #other stuff that actually updates catfacts
  else
    @resp = "You're not Emily..."
  end
  erb :sent
end
=end

end