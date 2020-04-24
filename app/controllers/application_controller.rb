require './config/environment' #don't forget me!

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
   	get '/recipes/new' do #this creates a new article
 		  erb :new
 		end
 		 
 		post '/recipes' do
      @recipes = Recipe.all
      erb :index
		end

end
