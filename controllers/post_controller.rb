
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

  {id:0,
    title: "Video-1",
    body: "esbrjfhjb.",
    link: "z1LELyptiDI"
  },
{ id:1,
  title: "Video-2",
  body: "ekrhbjbfjsf",
  link: "-3CFKAGPdtc"
},
{ id:2,
  title: "Video-3",
  body: "ekrhbjbfjsf",
  link: "toIoRnaDdrU"
},
{ id:3,
  title: "Video-4",
  body: "ekrhbjbfjsf",
  link: "WCppH6Jvn5Q"
},
{ id:4,
  title: "Video-5",
  body: "ekrhbjbfjsf",
  link: "vTke0eK0cUY"
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
    erb :'posts/show'
  end
end
