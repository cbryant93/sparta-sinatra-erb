class PostsController < Sinatra::Base

  # sets root of the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :view, Proc.new { File.join(root, "views") }

  # Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  #Landing Page
  get '/' do
  '<h1>Testing</h1>'
  end

  # Posts Index Page
  get '/post' do
  erb :'posts/index'
  end

  # New Posts Page
  get '/posts/new' do
  erb :'posts/new'
  end

  # Show Page
  get '/posts/:id' do

  id = params[:id].to_i
  erb :'posts/show'

  end

  # Edit Page
  get '/posts/:id/edit' do


  end


end
