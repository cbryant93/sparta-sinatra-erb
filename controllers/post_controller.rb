class PostsController < Sinatra::Base

  # sets root of the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :view, Proc.new { File.join(root, "views") }

  # Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
  '<h1>Testing</h1>'
  end

end
