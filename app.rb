require 'sinatra/base'
require 'sequel'
require 'pg'

class App < Sinatra::Application
  TEMP_ARRAY = []
  get '/' do
    erb :index, locals: {cars: TEMP_ARRAY}
  end

  post '/' do
    car = params[:car_form]
    TEMP_ARRAY << car
    redirect '/'
  end
end

