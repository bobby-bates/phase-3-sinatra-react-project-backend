class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/todo' do
    Todo.all.to_json
  end

  post '/todo' do
    todo = Todo.create(body: params[:body])
    todo.to_json
  end

  patch '/todo/:id' do
    todo = Todo.find(params[:id])
    todo.update(category: Category.find(params[:category]))
    todo.to_json
  end

  delete '/todo/:id' do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end
end
