# class is the child of sinatra base
class PostController <Sinatra::Base
# for rack to work
  set :root, File.join(File.dirname(__FILE__), "..")
  #
  set :view, Proc.new { File.join(root, "Views") }

  configure:development do
    register Sinatra::Reloader

  end

  # static dynamic

get "/" do

@title_homepage = "Index 1"
erb :'posts/index'
end

end
