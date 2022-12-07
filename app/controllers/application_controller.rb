class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #INDEX for characters
  get "/characters" do
    character = Character.all
    character.to_json
  end

  #INDEX for Events
  get "/events" do
    event = Event.all
    event.to_json
  end

  #SHOW
  #Example of route
  get "/characters/:id" do
    character = Character.find(params[:id])
    character.to_json
  end

  #Example of Post Malone
  post "/post" do
    character = Character.create(params)
    character.to_json
  end

  #UPDATE
  patch "/characters/:id" do
    character = Character.find(params[:id])
    character.update(params)
    character.to_json
  end

 # DESTROY
 delete "/characters/:id" do
    character = Character.find(params[:id])
    character.destroy
    {message: "Character deleted", id: character.id}.to_json
  end

end