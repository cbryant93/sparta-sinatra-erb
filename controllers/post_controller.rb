class PostsController < Sinatra::Base

  # sets root of the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :view, Proc.new { File.join(root, "views") }

  # Enable Reloader
  configure :development do
    register Sinatra::Reloader
  end

  $posts = [
  {
  id:0,
  title: "Justin Timberlake",
  body: "Justin Randall Timberlake (born January 31, 1981) is an American singer-songwriter, actor, and record producer.[1] Born and raised in Tennessee, he appeared on the television shows Star Search and The All-New Mickey Mouse Club as a child. In the late 1990s, Timberlake rose to prominence as one of the two lead vocalists and youngest member of NSYNC, which eventually became one of the best-selling boy bands of all time. Timberlake began to adopt a more mature image as an artist with the release of his debut solo album, the R&B-focused Justified (2002), which yielded the successful singles cry Me a River and Rock Your Body, and earned his first two Grammy Awards."
  },
  {
  id: 1,
  title: "Ed Sheeran",
  body: "Edward Christopher Sheeran, MBE (born 17 February 1991) is an English singer, songwriter, guitarist, and record producer. Sheeran was born in Halifax, West Yorkshire, and raised in Framlingham, Suffolk. He attended the Academy of Contemporary Music in Guildford as an undergraduate from the age of 18 in 2009. In early 2011, Sheeran independently released the extended play, No. 5 Collaborations Project. After signing with Asylum Records, his debut album, + (read as plus), was released in September 2011. "
  },
  {
  id: 2,
  title: "Bruno Mars",
  body: "Peter Gene Hernandez (born October 8, 1985), known professionally as Bruno Mars, is an American singer-songwriter, multi-instrumentalist, record producer, and choreographer. Born and raised in Honolulu, Hawaii, by a family of musicians, Mars began making music at a young age and performed in various musical venues in his hometown throughout his childhood. He graduated from high school and moved to Los Angeles to pursue a musical career. After being dropped by Motown Records, Mars signed a recording contract with Atlantic Records in 2009."
  },
  {
  id: 3,
  title: "Drake",
  body: "Aubrey Drake Graham (born October 24, 1986)[3] is a Canadian rapper, singer, songwriter, record producer, actor, and entrepreneur.[4][5] Drake initially gained recognition as an actor on the teen drama television series Degrassi: The Next Generation in the early 2000s. Intent on pursuing a career as a rapper, he departed the series in 2007 following the release of his debut mixtape, Room for Improvement. He released two further independent projects, Comeback Season and So Far Gone, before signing to Lil Wayne's Young Money Entertainment in June 2009.[6]"
  },
  {
  id: 4,
  title: "Migos",
  body: "Migos is an American hip hop trio from Lawrenceville, Georgia, formed in 2009.[1] The trio is composed of three rappers, known by their stage names Quavo, Offset, and Takeoff. The group's name is a reference to the Georgia drug trade, where a migos is an abandoned house used for production or consumption of drugs.[2]"
  },
  {
  id: 5,
  title: "Kendrick Lamar",
  body: "Kendrick Lamar Duckworth (born June 17, 1987) is an American rapper and songwriter. Raised in Compton, California, Lamar embarked on his musical career as a teenager under the stage name K-Dot, releasing a mixtape that garnered local attention and led to his signing with indie record label Top Dawg Entertainment (TDE)."
  },
  {
  id: 6,
  title: "Cardi B",
  body: "Belcalis Almanzar (born October 11, 1992), known professionally as Cardi B, is an American rapper, singer, songwriter, and media personality. Born and raised in The Bronx, New York, she first attracted attention for discussing her career as a stripper on social media; coupled with her no filter attitude,[1][2] she became an Internet celebrity through Instagram.[3][4]"
  },
  {
  id: 7,
  title: "Imagine Dragons",
  body: "Imagine Dragons is an American rock band from Las Vegas, Nevada, consisting of lead vocalist Dan Reynolds, lead guitarist Wayne Sermon, bassist and keyboardist Ben McKee, and drummer Daniel Platzman.[1] The band first gained exposure with the release of single It's Time, followed by their award-winning debut studio album Night Visions (2012), which resulted in the chart topping singles Radioactive and Demons. "
  },
  {
  id: 8,
  title: "Chris Stapleton",
  body: "Christopher Alvin Stapleton[1][2] (born April 15, 1978) is an American singer-songwriter[3][4] and guitarist.[5] Born and raised in Kentucky, Stapleton moved to Nashville, Tennessee where he started a career as a songwriter, contributing to the repertoire of a number of artists. As a vocalist, Stapleton led two music groups before releasing three studio albums as a soloist. His music styles include country, Southern rock and bluegrass."
  },
  {
  id: 9,
  title: "Post Malone",
  body: "Austin Richard Post (born July 4, 1995), known professionally as Post Malone, is an American rapper, singer, songwriter, record producer, and guitarist. He first gained major recognition in February 2015, after the release of his debut single White Iverson. In August 2015, Malone landed a record deal with Republic Records, going on to release Congratulations featuring Quavo and Rockstar featuring 21 Savage, which respectively reached numbers eight and one on the US Billboard Hot 100. He released his debut studio album Stoney in 2016. His upcoming album, Beerbongs and Bentleys, is set to be released in 2018."
  }

]

  #Landing Page
  get '/' do
  '<h1>Testing</h1>'
  end

  # Posts Index Page
  get '/post' do
  @posts = $posts
  erb :'posts/index'
  end

  # New Posts Page
  get '/posts/new' do
  erb :'posts/new'
  end

  # Show Page
  get '/posts/:id' do

  id = params[:id].to_i

  @post = $posts[id]

  erb :'posts/show'

  end

  # Edit Page
  get '/posts/:id/edit' do

  id = params[:id].to_i

  @post = $posts[id]

  erb :'/posts/edit'

  end


end
