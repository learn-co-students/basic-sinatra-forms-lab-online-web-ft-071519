require 'sinatra/base'

class App < Sinatra::Base


  get '/newteam' do
    erb :newteam
  end
  
  post '/newteam' do
    @all = []
    @all << "Team Name: #{params["name"]}"
    @all << "Coach: #{params["coach"]}"
    @all << "Point Guard: #{params["pg"]}"
    @all << "Shooting Guard: #{params["sg"]}"
    @all << "Shooting Forward: #{params["sf"]}"
    @all << "Power Forward: #{params["pf"]}"
    @all << "Center: #{params["c"]}"
    erb :team
  end
  
end
