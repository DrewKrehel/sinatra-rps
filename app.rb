require "sinatra"
require "sinatra/reloader"
require "htmlbeautifier"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("rock") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_moves = moves.sample
  
  if comp_moves == "rock"
    @outcome = "tied"
  elsif comp_moves == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  
  erb(:rock)
end

 
