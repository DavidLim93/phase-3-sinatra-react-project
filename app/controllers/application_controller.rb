class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    tasks = Task.all.order(:category_id)
    tasks.to_json
  end

  get '/tasks/:id' do
    task = Task.find(params[:id])
    task.to_json
  end

  post '/tasks' do
    task = Task.create(
      name: params[:name],
      description: params[:description],
      priority: params[:priority],
      deadline: params[:deadline]
    )
    task.save
    task.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task && task.update(params[:task])
      task.to_json
  end

  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

 
  get '/categories' do
    categories = Category.all
    categories.to_json
  end

  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json
  end

  patch '/categories/:id' do
    category = Category.find(params[:id])
    category.update(params[:category])
    category.to_json
  end

end
