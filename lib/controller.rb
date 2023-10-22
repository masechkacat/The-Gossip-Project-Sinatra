require 'gossip'

class ApplicationController < Sinatra::Base
    get '/' do
        erb :index, locals: { gossips: Gossip.all }
    end
    
    get '/gossips/new' do 
        erb :new_gossip
    end

    get '/gossips/:id' do
        index = params[:id].to_i
        @gossip = Gossip.all[index]
        erb :show
    end

    get '/gossips/:id/edit' do
        index = params[:id].to_i
        @gossip = Gossip.all[index]
        erb :edit
    end

    post '/gossips/new' do
        author = params[:author]
        content = params[:content]
        Gossip.new(author, content).save
        redirect '/'
    end

    post '/gossips/:id/edit' do
        index = params[:id].to_i
        @gossip = Gossip.all[index]      
        @gossip.content = params[:content].to_s   
        Gossip.update(index, @gossip.content)      
        redirect '/'
    end      
end
