require 'securerandom'

puts "Cleaning up database..."
Project.destroy_all
Skill.destroy_all
Developer.destroy_all

puts "Creating skills..."
skills = [ "ruby", "ruby on rails", "javascript", "react",
  "vue", "python", "c", "clojure", "objective-c", "c++",
  "c#", "node.js", "php", "nim", "julia", "lisp", "pascal",
  "java", "kotlin", "html", "css", "laravel", "go", "r",
  "typescript", "lua", "coffeescript", "elixir", "phoenix",
  "rust", "elm", "perl", "cobol", "dart", "sql", "erlang",
  "fortran", "sass", "slim", "matlab", "solidity", "reasonml",
  "unity", "visual basic", "web assembly", "angular",
  "backbone", "ember", "expressjs", "knockoutjs", "meteor",
  "django", "haskell", "scala", "swift", "crystal",
  "kepler", "play", "lift", "drupal", "symfony", "sinatra" ]
skills.each { |s| Skill.create!(name: s) }
puts "Created #{Skill.count} skills!"

puts "Creating developers..."
torvalds = Developer.new(
  first_name: "Linus",
  last_name: "Torvalds",
  github_username: "torvalds",
  avatar_url: "https://avatars0.githubusercontent.com/u/1024025?v=4",
  hourly_rate: 450,
  bio: "Linus Benedict Torvalds is a Finnish–American software engineer who is the creator, and historically, the principal developer of the Linux kernel, which became the kernel for many Linux distributions and operating systems such as Android and Chrome OS. He also created the distributed version control system Git and the diving logging and planning software Subsurface. He was honoured, along with Shinya Yamanaka, with the 2012 Millennium Technology Prize by the Technology Academy Finland \"in recognition of his creation of a new open source operating system for computers leading to the widely used Linux kernel\". He is also the recipient of the 2014 IEEE Computer Society Computer Pioneer Award and the 2018 IEEE Masaru Ibuka Consumer Electronics Award."
  )
%w(c c++).each do |s|
  torvalds.skills << Skill.find_by_name(s)
end
torvalds.save!

wharton = Developer.new(
  first_name: "Jake",
  last_name: "Wharton",
  github_username: "jakewharton",
  avatar_url: "https://avatars0.githubusercontent.com/u/66577?s=400&v=4",
  hourly_rate: 350,
  bio: "Programmer. Web developer. Open source practitioner and contributor. Android enthusiast."
)
%w(kotlin java html javascript css).each do |s|
  wharton.skills << Skill.find_by_name(s)
end
wharton.save!

evan = Developer.new(
  first_name: "Evan",
  last_name: "You",
  github_username: "yyx990803",
  avatar_url: "https://avatars3.githubusercontent.com/u/499550?s=400&v=4",
  hourly_rate: 420,
  bio: "Design. Hack. Imagine. Front-end engineering, UI/UX & creative coding."
)
%w(javascript vue html css php python).each do |s|
  evan.skills << Skill.find_by_name(s)
end
evan.save!

tj = Developer.new(
  first_name: "TJ",
  last_name: " Holowaychuk",
  github_username: "tj",
  avatar_url: "https://avatars2.githubusercontent.com/u/25254?s=400&v=4",
  hourly_rate: 390,
  bio: "Founder of Apex\r\nhttps://apex.sh, a non-startup.\r\nmedium.com/@tjholowaychuk • twitter.com/tjholowaychuk • tjholowaychuk.com"
)
%w(javascript go html).each do |s|
  tj.skills << Skill.find_by_name(s)
end
tj.save!

abramov = Developer.new(
  first_name: "Dan",
  last_name: " Abramov",
  github_username: "gaearon",
  avatar_url: "https://avatars0.githubusercontent.com/u/810438?s=400&v=4",
  hourly_rate: 420,
  bio: "Working on @reactjs. Co-author of Redux and Create React App. Building tools for humans."
)
%w(javascript react css html).each do |s|
  abramov.skills << Skill.find_by_name(s)
end
abramov.save!

sindresorhus = Developer.new(
  first_name: "Sindre",
  last_name: " Sorhus",
  github_username: "sindresorhus",
  avatar_url: "https://avatars3.githubusercontent.com/u/170270?s=400&v=4",
  hourly_rate: 380,
  bio: "Maker · Full-Time Open-Sourcerer · Into Swift and Node.js"
)
%w(javascript swift node.js typescript css html).each do |s|
  sindresorhus.skills << Skill.find_by_name(s)
end
sindresorhus.save!

irish = Developer.new(
  first_name: "Paul",
  last_name: " Irish",
  github_username: "paulirish",
  avatar_url: "https://avatars2.githubusercontent.com/u/39191?s=400&v=4",
  hourly_rate: 280,
  bio: "Paul Irish is an American front-end engineer and a developer advocate for the Google Chrome web browser. He is widely recognized as a thought leader and a leading evangelist in web technologies, including JavaScript and CSS. In 2011, he was named Developer of the Year by The Net Awards for his contributions to the web development landscape and his participation in many popular open source projects."
)
%w(javascript perl css html).each do |s|
  irish.skills << Skill.find_by_name(s)
end
irish.save!

raval = Developer.new(
  first_name: "Siraj",
  last_name: " Raval",
  github_username: "llsourcell",
  avatar_url: "https://avatars3.githubusercontent.com/u/1279609?s=400&v=4",
  hourly_rate: 480,
  bio: "Siraj is on a warpath to inspire and educate developers to build Artificial Intelligence. Games, music, chatbots, art, he'll teach you how to make it all yourself."
)
%w(python).each do |s|
  raval.skills << Skill.find_by_name(s)
end
raval.save!

mojombo = Developer.new(
  first_name: "Tom",
  last_name: " Preston-Werner",
  github_username: "mojombo",
  avatar_url: "https://avatars3.githubusercontent.com/u/1?s=400&v=4",
  hourly_rate: 410,
  bio: "Thomas Preston-Werner (born October 28, 1979) is an American billionaire software developer, inventor and entrepreneur. He is an active contributor within the open-source development community, most prominently in the San Francisco Bay Area, where he lives. He is best known as the founder and former CEO of GitHub, a Git repository web-based hosting service, which he co-founded in 2008 with Chris Wanstrath and PJ Hyett. Preston-Werner is also the creator of the avatar service Gravatar."
)
%w(ruby javascript perl go erlang css html r).each do |s|
  mojombo.skills << Skill.find_by_name(s)
end
mojombo.save!

defunkt = Developer.new(
  first_name: "Chris",
  last_name: " Wanstrath",
  github_username: "defunkt",
  avatar_url: "https://avatars2.githubusercontent.com/u/2?s=400&v=4",
  hourly_rate: 320,
  bio: "Chris Wanstrath is an American technology entrepreneur. He is the co-founder and CEO of GitHub, a social network centred around software development, which he created with Tom Preston-Werner in 2008. Before starting GitHub, he worked with CNET on GameSpot. According to Forbes, his net worth is estimated to be $1.4 billion and he is listed in Forbes Magazine in America's richest entrepreneurs under 40, as well as Fortune Magazine's 40 under 40. He was one of the key speakers at NASA's open source summit. He was named in CNBC's Disruptor 50 list."
)
%w(ruby javascript coffeescript python c).each do |s|
  defunkt.skills << Skill.find_by_name(s)
end
defunkt.save!

karpathy = Developer.new(
  first_name: "Andrej",
  last_name: " Karpathy",
  github_username: "karpathy",
  avatar_url: "https://avatars2.githubusercontent.com/u/241138?s=400&v=4",
  hourly_rate: 290,
  bio: "Andrej is the Director of AI at Tesla, currently focused on perception for the Autopilot. Previously, he was a Research Scientist at OpenAI working on Deep Learning in Computer Vision, Generative Modeling and Reinforcement Learning. He received his PhD from Stanford, where he worked with Fei-Fei Li on Convolutional/Recurrent Neural Network architectures and their applications in Computer Vision, Natural Language Processing and their intersection. Over the course of his PhD he squeezed in two internships at Google where he worked on large-scale feature learning over YouTube videos, and in 2015 he interned at DeepMind and worked on Deep Reinforcement Learning. Together with Fei-Fei, he designed and taught a new Stanford class on Convolutional Neural Networks for Visual Recognition (CS231n). The class was the first Deep Learning course offering at Stanford and has grown from 150 enrolled in 2015 to 330 students in 2016, and 750 students in 2017."
)
%w(python html css lua javascript c++).each do |s|
  karpathy.skills << Skill.find_by_name(s)
end
karpathy.save!

mbostock = Developer.new(
  first_name: "Mike",
  last_name: " Bostock",
  github_username: "mbostock",
  avatar_url: "https://avatars2.githubusercontent.com/u/230541?s=400&v=4",
  hourly_rate: 220,
  bio: "Michael \"Mike\" Bostock is an American computer scientist and data-visualisation specialist. He is noted as one of the key developers of D3.js, a JavaScript library used for producing dynamic, interactive, online data visualizations. He was also involved in the preceding Protovis framework. Bostock was a PhD student at Stanford University, advised by Jeffrey Heer. Until 2015 he was working for the New York Times where he was leading complex data-visualisation projects. Also for the New York Times, he helped to create interactive articles. He is also an adviser to data transformation platform provider Trifacta."
)
%w(javascript html css).each do |s|
  mbostock.skills << Skill.find_by_name(s)
end
mbostock.save!

otto = Developer.new(
  first_name: "Mark",
  last_name: " Otto",
  github_username: "mdo",
  avatar_url: "https://avatars1.githubusercontent.com/u/98681?s=400&v=4",
  hourly_rate: 270,
  bio: "Senior Director of Design at GitHub. Creator of Bootstrap. Previously at Twitter. Huge nerd"
)
%w(html css javascript).each do |s|
  otto.skills << Skill.find_by_name(s)
end
otto.save!

getify = Developer.new(
  first_name: "Kyle",
  last_name: " Simpson",
  github_username: "getify",
  avatar_url: "https://avatars0.githubusercontent.com/u/150330?s=400&v=4",
  hourly_rate: 370,
  bio: "Kyle Simpson is an evangelist of the open web, passionate about all things JavaScript. He writes books, teaches JavaScript, speaks, and contributes to the world of OSS."
)
%w(javascript).each do |s|
  getify.skills << Skill.find_by_name(s)
end
getify.save!

tian = Developer.new(
  first_name: "Jackson",
  last_name: " Tian",
  github_username: "jacksontian",
  avatar_url: "https://avatars1.githubusercontent.com/u/327019?s=400&v=4",
  hourly_rate: 230,
  bio: "Jackson Tian uses JavaScript, CSS, HTML, Perl, Makefile, C++, C..."
)
%w(javascript css html perl c++ c).each do |s|
  tian.skills << Skill.find_by_name(s)
end
tian.save!

jlord = Developer.new(
  first_name: "Jessica",
  last_name: " Lord",
  github_username: "jlord",
  avatar_url: "https://avatars0.githubusercontent.com/u/1305617?s=400&v=4",
  hourly_rate: 260,
  bio: "Jessica is an urban designer turned open web developer—which isn't as odd as it sounds. She's a backend engineer at Splice. Before that she worked on a bunch of things at GitHub, last was starting the Electron team. The year that changed everything was being a Code for America fellow in 2012. She did the fellowship after working at the City of Boston's Urban Design Technology group and an architecture firm. Before that she was in college, Georgia Tech, graduating with an architecture degree."
)
%w(javascript css html node.js).each do |s|
  jlord.skills << Skill.find_by_name(s)
end
jlord.save!

grider = Developer.new(
  first_name: "Stephen",
  last_name: " Grider",
  github_username: "stephengrider",
  avatar_url: "https://avatars3.githubusercontent.com/u/5003903?s=400&v=4",
  hourly_rate: 320,
  bio: "Stephen Grider has been building complex Javascript front ends for top corporations in the San Francisco Bay Area. With an innate ability to simplify complex topics, Stephen has been mentoring engineers beginning their careers in software development for years, and has now expanded that experience onto Udemy, authoring the highest rated React course. He teaches on Udemy to share the knowledge he has gained with other software engineers. Invest in yourself by learning from Stephen's published courses."
)
%w(javascript css html elixir react node.js vue).each do |s|
  grider.skills << Skill.find_by_name(s)
end
grider.save!

dhh = Developer.new(
  first_name: "David",
  last_name: "Heinemeier Hansson",
  github_username: "dhh",
  avatar_url: "https://avatars3.githubusercontent.com/u/2741?s=400&v=4",
  hourly_rate: 520,
  bio: "David Heinemeier Hansson (born 15 October 1979; also known to the Ruby programming language and automobile racing communities as DHH) is a Danish programmer and the creator of the popular Ruby on Rails web development framework and the Instiki wiki. He is also a partner at the web-based software development firm Basecamp. Hansson co-wrote Agile Web Development with Rails with Dave Thomas in 2005 as part of The Facets of Ruby Series. He also co-wrote Getting Real, Rework, and Remote with Jason Fried."
)
%w(ruby ruby\ on\ rails javascript coffeescript).each do |s|
  dhh.skills << Skill.find_by_name(s)
end
dhh.save!

schacon = Developer.new(
  first_name: "Scott",
  last_name: "Chacon",
  github_username: "schacon",
  avatar_url: "https://avatars3.githubusercontent.com/u/70?s=400&v=4",
  hourly_rate: 320,
  bio: "Scott Chacon is a software developer, Git evangelist, speaker, writer, world traveller, father, husband, cat rescuer, baby signer and gorilla tamer. Not necessarily in that order."
)
%w(ruby javascript c python coffeescript).each do |s|
  schacon.skills << Skill.find_by_name(s)
end
schacon.save!

rodloboz = Developer.new(
  first_name: "Rui",
  last_name: "Freitas",
  github_username: "rodloboz",
  avatar_url: "https://avatars3.githubusercontent.com/u/23458442?s=400&u=0a5cd87195bd5f117aceb8baecd075731190c112&v=4",
  hourly_rate: 30,
  bio: "Rui attended Le Wagon's coding bootcamp in Lisbon and has been teaching at Le Wagon ever since. He finds programming a blend between creativity and craftsmanship. As a programming language, Ruby is his first love, but he also enjoys working with JavaScript frameworks, such as Vuejs and React, and Elixir."
)
%w(ruby ruby\ on\ rails javascript react vue elixir phoenix crystal).each do |s|
  rodloboz.skills << Skill.find_by_name(s)
end
rodloboz.save!

askn = Developer.new(
  first_name: "Aşkın",
  last_name: "Gedik",
  github_username: "askn",
  avatar_url: "https://avatars2.githubusercontent.com/u/632820?s=400&v=4",
  hourly_rate: 210,
  bio: "Software Development Team Lead at @protelturkiye, #Rails and #CrystalLang developer."
)
%w(crystal ruby go ruby\ on\ rails).each do |s|
  askn.skills << Skill.find_by_name(s)
end
askn.save!

marceloboeira = Developer.new(
  first_name: "Marcelo",
  last_name: "Boeira",
  github_username: "marceloboeira",
  avatar_url: "https://avatars2.githubusercontent.com/u/1898225?s=400&v=4",
  hourly_rate: 170,
  bio: "Agnostic Software Engineer with 7+ years of experience working on large-scale web applications. Currently, working as Platform Engineer at heycar, helping the company to scale its operations by focusing on high-available distributed applications, fan-out architecture, and data pipelines while keeping an eye on product and UX. Passionate about software that makes an impact, observability, and open source."
)
%w(crystal python haskell scala go c swift rust vue).each do |s|
  marceloboeira.skills << Skill.find_by_name(s)
end
marceloboeira.save!

drujensen = Developer.new(
  first_name: "Dru",
  last_name: "Jensen",
  github_username: "drujensen",
  avatar_url: "https://avatars3.githubusercontent.com/u/18718?s=400&v=4",
  hourly_rate: 190,
  bio: "20 years of experience in software development with expertise in implementing web-based applications and phone apps. Expert knowledge in many different platforms, languages, and frameworks. Extensive experience with the whole life-cycle of designing, implementing, deploying and maintaining a software application. Hands on technologist who thrives in environments focused on producing value to customers."
)
%w(ruby php crystal javascript).each do |s|
  drujensen.skills << Skill.find_by_name(s)
end
drujensen.save!

evancz = Developer.new(
  first_name: "Evan",
  last_name: "Czaplicki",
  github_username: "evancz",
  avatar_url: "https://avatars2.githubusercontent.com/u/1658058?s=400&v=4",
  hourly_rate: 280,
  bio: "Designer/developer of @elm-lang. Working at @NoRedInk."
)
%w(haskell elm javascript html).each do |s|
  evancz.skills << Skill.find_by_name(s)
end
evancz.save!

valim = Developer.new(
  first_name: "José",
  last_name: "Valim",
  github_username: "josevalim",
  avatar_url: "https://avatars1.githubusercontent.com/u/9582?s=400&v=4",
  hourly_rate: 380,
  bio: "José Valim is the creator of the Elixir programming language, developed as part of his work as the Director of R&D at Plataformatec. He is a seasoned conference speaker and actively promotes Elixir and its ecosystem. He is also the author of three technical books. He was a member of the Rails Core Team from early 2010 to mid-2014 and he received the Ruby Hero Award as a recognition for his work on other Open Source projects. He graduated in Engineering at Escola Politécnica de São Paulo (Brazil) and has a Machine Learning master's degree from Politecnico di Torino, in Italy."
)
%w(elixir erlang ruby ruby\ on\ rails c c#).each do |s|
  valim.skills << Skill.find_by_name(s)
end
valim.save!

tenderlove = Developer.new(
  first_name: "Aaron",
  last_name: "Patterson",
  github_username: "tenderlove",
  avatar_url: "https://avatars2.githubusercontent.com/u/3124?s=400&v=4",
  hourly_rate: 330,
  bio: "His talent is inspiring people. He likes to do that by writing fun and interesting programs and sharing them with others for the express purposes of teaching. He is passionate about helping other people in my field, and he thinks the most effective way for me to impact the most developers is by working on Open Source software. He chooses to work on Ruby and Rails because improving Rails provides a large impact on the developer community. He believes he has the skills and experience to be one of the most effective framework and language developers."
)
%w(ruby ruby\ on\ rails c c++).each do |s|
  tenderlove.skills << Skill.find_by_name(s)
end
tenderlove.save!

eileencodes = Developer.new(
  first_name: "Eileen",
  last_name: "M. Uchitelle",
  github_username: "eileencodes",
  avatar_url: "https://avatars2.githubusercontent.com/u/1080678?s=400&v=4",
  hourly_rate: 390,
  bio: "Eileen M. Uchitelle Senior Systems Engineer at GitHub. Her focus is to ensure applications and code are secure and fast. She is an avid contributor to open source focusing most of her energy on improving the Ruby on Rails framework. She's is a member of the Rails Core team and the Rails Security team. Eileen is also a speaker and has presented at many conferences on performance, Active Record, and contributing to Rails."
)
%w(ruby ruby\ on\ rails c swift javascript go).each do |s|
  eileencodes.skills << Skill.find_by_name(s)
end
eileencodes.save!

excid3 = Developer.new(
  first_name: "Chris",
  last_name: "Oliver",
  github_username: "excid3",
  avatar_url: "https://avatars1.githubusercontent.com/u/67093?s=400&v=4",
  hourly_rate: 140,
  bio: "Chris Oliver specializes in web development and user experience design with Ruby on Rails, Javascript, HTML5, and CSS3."
)
%w(ruby ruby\ on\ rails python javascript c++).each do |s|
  excid3.skills << Skill.find_by_name(s)
end
excid3.save!

seb = Developer.new(
  first_name: "Sébastien",
  last_name: "Saunier",
  github_username: "seb@saunier.me",
  avatar_url: "https://avatars0.githubusercontent.com/u/414418?s=400&v=4",
  hourly_rate: 170,
  bio: "Sébastien is a developer with 10+ years of experience with shipping technological products. He co-founded Le Wagon to bring technical skills to creative people teaching them to code and build their own product."
)
%w(ruby ruby\ on\ rails css html javascript react).each do |s|
  seb.skills << Skill.find_by_name(s)
end
seb.save!

boris = Developer.new(
  first_name: "Boris",
  last_name: "Paillard",
  github_username: "papillard",
  avatar_url: "https://avatars0.githubusercontent.com/u/2471555?s=400&v=4",
  hourly_rate: 60,
  bio: "Passionate about education, Boris launched Le Wagon to bring technical skills to creative people and entrepreneurs. Le Wagon is now ranked #1 coding school in the world."
)
%w(html css).each do |s|
  boris.skills << Skill.find_by_name(s)
end
boris.save!

cpytel = Developer.new(
  first_name: "Chad",
  last_name: "Pytel",
  github_username: "cpytel",
  avatar_url: "https://avatars1.githubusercontent.com/u/5015?s=400&v=4",
  hourly_rate: 280,
  bio: "Chad is a developer, founder, and the CEO of thoughtbot. He has coauthored the books Rails AntiPatterns and Pro Active Record, and presented at conferences around the world."
)
%w(html css ruby swift ruby\ on\ rails javascript).each do |s|
  cpytel.skills << Skill.find_by_name(s)
end
cpytel.save!

clayton = Developer.new(
  first_name: "Joshua",
  last_name: "Clayton",
  github_username: "joshuaclayton",
  avatar_url: "https://avatars1.githubusercontent.com/u/1574?s=400&v=4",
  hourly_rate: 220,
  bio: "With fifteen years of professional software development experience, Joshua works to establish pragmatic approaches to both process and product design within both early-stage startups and established corporations alike. This ensures a focus on failing fast, quick course correction by collecting and incorporating customer feedback, and feature prioritization and simplification. He is a United States Marine Corps veteran and leads a diverse team in thoughtbot's Boston office focusing on identifying new business opportunities, achieving success for their customers, and increasing fulfilment within their team."
)
%w(ruby elm haskell javascript swift ruby\ on\ rails elixir phoenix).each do |s|
  clayton.skills << Skill.find_by_name(s)
end
clayton.save!

velasco = Developer.new(
  first_name: "German",
  last_name: "Velasco",
  github_username: "germsvel",
  avatar_url: "https://avatars0.githubusercontent.com/u/3245976?s=400&v=4",
  hourly_rate: 210,
  bio: "Software developer passionate about writing clean, well-designed, test-driven code. Specialties: Ruby, Rails, RSpec Interests: Elixir, Phoenix."
)
%w(ruby ruby\ on\ rails elixir python css html).each do |s|
  velasco.skills << Skill.find_by_name(s)
end
velasco.save!

christoomey = Developer.new(
  first_name: "Chris",
  last_name: "Toomey",
  github_username: "christoomey",
  avatar_url: "https://avatars1.githubusercontent.com/u/420113?s=400&v=4",
  hourly_rate: 180,
  bio: "Chris loves building things, particularly on the web. Its scope and reach, as well as the ability to uniquely identify and link to any resource, is just so powerful. While he’d hesitate to ever label himself as a “Ruby” or “JavaScript” developer, he feels at home with the title “web developer”. He's worked with a myriad of technologies over the years including Ruby, JavaScript, Python, VB, Haskell, Scala, Elm, Postgres, and many more. The unifying factor for him has always been a focus on the web."
)
%w(ruby ruby\ on\ rails javascript react haskell scala elm python).each do |s|
  christoomey.skills << Skill.find_by_name(s)
end
christoomey.save!

puts "Created #{Developer.count} developers!"

puts "Creating projects..."
Developer.find_each do |developer|
  Project.create!(
    developer: developer,
    name: "Quicky Forecast",
    stack: "Ruby | Ruby on Rails | Javascript | React",
    photo: "https://res.cloudinary.com/opratododia/image/upload/v1540565710/case-projects/quicky-forecast-02.png",
    description: "Quicky Forecast removes this illusion of activity, by offering a UI that promotes simplicity and transparency. In just a glance, the entire team is allowed to understand the sales forecast situation, see what's closed, what's forecasted and when. Rather than just generating sales forecasts weekly or monthly, Quicky Forecast is always available and ready."
  )

  Project.create!(
    developer: developer,
    name: " GasBuddy",
    stack: "Swift | Objective C",
    photo: "https://res.cloudinary.com/opratododia/image/upload/v1540565717/case-projects/gasbuddy-01.jpg",
    description: "With a rebrand in progress to support this new future, we worked with GasBuddy to improve their existing iOS and Android apps’ interface and user experience to bring them into the modern age of mobile design, and find a new system that would allow new features to be added logically."
  )

  Project.create!(
    developer: developer,
    name: " Joydrive",
    stack: "Elixir | Phoenix",
    photo: "https://res.cloudinary.com/opratododia/image/upload/v1540565712/case-projects/joydrive-01.jpg",
    description: "Joydrive reduces the stress of purchasing a car by providing customers a hassle-free online storefront where they can browse multiple dealers for new and used cars, get immediate Kelly Blue Book trade-in value, and have cars picked up and delivered right to their front door all in a single app. ."
  )

  Project.create!(
    developer: developer,
    name: "Escate the City",
    stack: "Ruby | Ruby on Rails",
    photo: "https://res.cloudinary.com/opratododia/image/upload/v1540574889/case-projects/escapethecity.png",
    description: "Escape the City had an old site based on PHP. In order to raise funding and accelerate the business growth, they urgently needed a higher quality technology platform that would help gain traction with users."
  )

  Project.create!(
    developer: developer,
    name: "Easyteach",
    stack: "Ruby | Ruby on Rails | Saas | React",
    photo: "https://res.cloudinary.com/opratododia/image/upload/v1540629385/case-projects/easytech.jpg",
    description: "Easytech's mission is to design and develop medical devices conceived for a full recovery of physical and motor abilities of every person. The working philosophy developed by Easytech aims at developing technologies designed to provide the best possible benefits to operators."
  )

  Project.create!(
    developer: developer,
    name: "Limoney",
    stack: "Ruby | Ruby on Rails | Saas | CoffeeScript",
    photo: "https://res.cloudinary.com/opratododia/image/upload/v1540629387/case-projects/limoney.jpg",
    description: "Easytech's mission is to design and develop medical devices conceived for a full recovery of physical and motor abilities of every person. The working philosophy developed by Easytech aims at developing technologies designed to provide the best possible benefits to operators."
  )

  Project.create!(
    developer: developer,
    name: "Lepori",
    stack: "Ruby | Ruby on Rails",
    photo: "https://res.cloudinary.com/opratododia/image/upload/v1540629567/case-projects/lepori.jpg",
    description: "Indios shoes was established in 1956 and, along the years, it has specialized in the production of mocassins. We have built their website and the online store with ruby on rails and spree ecommerce."
  )
end

puts "Seeding completed!"




