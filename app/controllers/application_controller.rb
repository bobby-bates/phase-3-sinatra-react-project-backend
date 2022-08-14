class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/todos' do
    Todo.all.to_json
  end

  get '/categories' do
    Category.all.to_json
  end

  post '/todos' do
    todo = Todo.create(body: params[:body], category_id: params[:category_id])
    todo.to_json
  end

  patch '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.update(body: todo.body)
    todo.to_json
  end

  delete '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
end
