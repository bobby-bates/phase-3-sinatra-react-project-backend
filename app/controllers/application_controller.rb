class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/todo' do
    Todo.all.to_json
  end

  # Make new todo from params
  post '/todo' do
    Todo.all.to_json
  end
  # Find todo with params
  patch '/todo/:id' do
    Todo.all.to_json
  end
  
  # Find todo with params
  delete '/todo/:id' do
    Todo.all.to_json
  end
end
