# class is the child of sinatra base
class PostController < Sinatra::Base
# for rack to work
  set :root, File.join(File.dirname(__FILE__), "..")
  #
  set :view, Proc.new { File.join(root, "Views") }

  configure:development do
    register Sinatra::Reloader
  end
# creating the Hash.new
$videos = [
  {
    id: 1,
    title: "Video 1",
    description:"This video is about ........."
  },
  {
    id: 2,
    title: "Video 2",
    description:"This video is about ........."
  },
  {
    id:3,
    title:"Video 3",
    description: "This video is about....."
  },
  {
    id:4,
    title:"Video 4",
    description:"This video is about...."
  },
  {
    id:5,
    title:"Video 5",
    description:"This video is about........."
  }
]
  # static dynamic
  get "/" do
  @title_homepage = "Index 1"
  @videos = $videos
  erb :'posts/index'
  end

  get "/new" do
    "<h1> hi Lorem ipsum t anim id est laborum.</h1>"
  end

  get "/:id_from_video" do
    id = params[:id_from_video].to_i
    @post = $videos[id]
    erb :'posts/video1'
  end



end
