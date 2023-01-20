class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    task = Todos.all.order(:id)
    task.to_json
  end

  post '/todos' do
    task = Todos.create(
      todo: params[:todo],
      importance: params[:importance],
      complete_by: params[:complete_by],
    )
    task.to_json
  end

  patch '/todos/:id' do
    task = Todos.find(params[:id])
    task.update(
      todo: params[:todo]

    )
    task.to_json
  end

  delete '/todos/:id' do
    task = Todos.find(params[:id])
    task.destroy
    task.to_json
  end

end

