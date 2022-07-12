class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/game" do
    game = Game.all
    game.to_json
  end
get "/user" do
  user = User.all
  user.to_json
end

get "/comment" do
  comment = Comment.all
  comment.to_json
end
end
