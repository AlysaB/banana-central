require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post '/' do 
    Results = Animals.new(params)
    @answer = Results.result
    if @answer == :rainforest
      return erb :rainforest
    elsif @answer == :aquatic
      return erb :aquatic
    elsif @answer == :desert
      return erb :desert
    elsif @answer == :farm_domestic
      return erb :farm_domestic
    elsif @answer == :savannah
      return erb :savannah
    elsif @answer == :forest
      return erb :forest
    end
  end 
end