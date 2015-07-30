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
   #massText
    erb :input
  end

end