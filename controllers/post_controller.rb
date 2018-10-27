
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
    title: "GRWM",
    body: "Make sure you click 1080 HD.
---------------------------------------------------------------------------------------
If you guys want to connect with me you can follow me on
INSTAGRAM. melachild
TWITTER. melachild
SNAPCHAT. naomibankss
CONTACT EMAIL : melachild@hotmail.com
---------------------------------------------------------------------------------

",
    link: "z1LELyptiDI"
  },
{ id:1,
  title: "GirlTalk",
  body: "Hey dolls, will fill in later",
  link: "-3CFKAGPdtc"
},
{ id:2,
  title: "Hair-Review",
  body: "LIKE AND SUSCRIBE HUNNIES
---------------------------------------------------------------------------------------
IF I TELL YOU WHAT HAS HAPPENED TO ME THIS WEEK LMAO, IT'S ONLY GOD!

I'm so sorry for the late upload a lot has been going on but anyway, I needed to let you guys know that you need to stop messing with these trash vendors and get with peerless hair. I mean look at what their hair has done to me !!! It's got me moving mad different I dont even breathe the same air as everyone.",
  link: "toIoRnaDdrU"
},
{ id:3,
  title: "Talk-time",
  body: "Hello my lovelies
, It's been a minute but here it is ",
  link: "WCppH6Jvn5Q"
},
{ id:4,
  title: "Get to know me",
  body: "It has been a minute I know I had to get my mind right, I wouldnt say I've fully recovered but I'm doing better as each day goes by, I hope you can find it in your heart to forgive me for being inconsiderate and not thinking about you all and putting my needs first. I've learnt alot these past few months and the experiences I've encountered will definetly shape me for the rest of my life, right now I'm just coming to terms with it and trying to learn as much as I can. Experience is the best teacher I'm only realising  that now. Well I hope you guys enjoy the video ",
  link: "vTke0eK0cUY"
}
]
  # static route- doesn't change
  get "/" do
    # "<h1>hello Sinatra</h1>"
    @title_for_the_page = "Homepage"
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
