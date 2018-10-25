
# this class will be a child of sinatra base
class PostController < Sinatra::Base
# for rack to work!!!!!!!!!!! its's a must
set :root, File.join(File.dirname(__FILE__), "..")
#
set :view, Proc.new { File.join(root, "Views") }

configure:development do
  register Sinatra::Reloader
end
# find out the meaning of dollar sign in ruby
$videos = [

  {id:1,
    title: "Video-1",
    body: "esbrjfhjb."
  },
{ id:2,
  title: "Video-2",
  body: "ekrhbjbfjsf"
},
{ id:3,
  title: "Video-3",
  body: "ekrhbjbfjsf"
},
{ id:4,
  title: "Video-4",
  body: "ekrhbjbfjsf"
},
{ id:5,
  title: "Video-5",
  body: "ekrhbjbfjsf"
}
]
  # static route- doesn't change
  get "/" do
    # "<h1>hello Sinatra</h1>"
    @title_for_the_page = "Blog Posts"
    # to get all the values for posts
    @videos = $videos
    erb :'posts/index'

  end

  get "/new" do
    "<h1>hello Sinatra new page</h1>"
  end

  # dynamic route- changes
  get "/:id_from_URL" do
    id = params[:id_from_URL].to_i
    @videos = $videos[id]
    erb :'posts/video1'
  end

end
