require "sinatra"
require "sinatra/reloader"
require "htmlbeautifier"

get("/") do
  erb(:homepage)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_moves = moves.sample
  
  if @comp_moves == "rock"
    @outcome = "tied"
  elsif @comp_moves == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  
  erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_moves = moves.sample
  
  if @comp_moves == "paper"
    @outcome = "tied"
  elsif @comp_moves == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  
  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_moves = moves.sample
  
  if @comp_moves == "scissors"
    @outcome = "tied"
  elsif @comp_moves == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  
  erb(:scissors)
end
