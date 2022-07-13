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

  post "/user" do
    user = User.create(user_name: params[:user_name], password: params[:password])
  end

  get "/comment" do
    comment = Comment.all
    comment.to_json
  end

  get "/comment/:id" do
    comment = Comment.find(params[:id])
    comment.to_json
  end

  post "/comment" do
    comment = Comment.create(body: params[:body], rating: params[:rating], game_id: params[:game_id], user_id: params[:user_id])
    comment.to_json
  end

  patch "/comment/:id" do
    comment = Comment.find(params[:id])
    comment.update(body: params[:body])
    comment.to_json
  end

  delete "/comment/:id" do
    comment = Comment.find(params[:id])
    comment.destroy 
    comment.to_json
  end
end
