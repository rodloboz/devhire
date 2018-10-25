require 'securerandom'

puts "Cleaning up database..."
Skill.destroy_all
User.destroy_all

puts "Creating skills..."
skills = [ "ruby", "ruby on rails", "javascript", "react",
  "vue", "python", "c", "c++", "c#", "node.js", "php",
  "java", "kotlin", "html", "css", "laravel", "go", "r",
  "typescript", "lua", "coffeescript", "elixir", "phoenix",
  "django", "haskell", "scala", "swift", "crystal",
  "erlang", "rust", "elm", "perl"]
skills.each { |s| Skill.create!(name: s) }
puts "Created #{Skill.count} skills!"

puts "Creating users..."
torvalds = User.create!(
  first_name: "Linus",
  last_name: "Torvalds",
  github_username: "torvalds",
  avatar_url: "https://avatars0.githubusercontent.com/u/1024025?v=4",
  hourly_rate: 450,
  email: "torvalds@linuxfoundation.org",
  password: SecureRandom.base64(15)
)
%w(c c++).each do |s|
  torvalds.skills << Skill.find_by_name(s)
end

wharton = User.create!(
  first_name: "Jake",
  last_name: "Wharton",
  github_username: "jakewharton",
  avatar_url: "https://avatars0.githubusercontent.com/u/66577?s=400&v=4",
  hourly_rate: 350,
  email: "jakewharton@gmail.com",
  password: SecureRandom.base64(15)
)
%w(kotlin java html javascript css).each do |s|
  wharton.skills << Skill.find_by_name(s)
end

evan = User.create!(
  first_name: "Evan",
  last_name: "You",
  github_username: "yyx990803",
  avatar_url: "https://avatars3.githubusercontent.com/u/499550?s=400&v=4",
  hourly_rate: 420,
  email: "evanyou@gmail.com",
  password: SecureRandom.base64(15)
)
%w(javascript vue html css php python).each do |s|
  evan.skills << Skill.find_by_name(s)
end

tj = User.create!(
  first_name: "TJ",
  last_name: " Holowaychuk",
  github_username: "tj",
  avatar_url: "https://avatars2.githubusercontent.com/u/25254?s=400&v=4",
  hourly_rate: 390,
  email: "tj@apex.sh",
  password: SecureRandom.base64(15)
)
%w(javascript go html).each do |s|
  tj.skills << Skill.find_by_name(s)
end

abramov = User.create!(
  first_name: "Dan",
  last_name: " Abramov",
  github_username: "gaearon",
  avatar_url: "https://avatars0.githubusercontent.com/u/810438?s=400&v=4",
  hourly_rate: 420,
  email: "dan.abramov@me.com",
  password: SecureRandom.base64(15)
)
%w(javascript react css html).each do |s|
  abramov.skills << Skill.find_by_name(s)
end

sindresorhus = User.create!(
  first_name: "Sindre",
  last_name: " Sorhus",
  github_username: "sindresorhus",
  avatar_url: "https://avatars3.githubusercontent.com/u/170270?s=400&v=4",
  hourly_rate: 380,
  email: "sindresorhus@gmail.com",
  password: SecureRandom.base64(15)
)
%w(javascript swift node.js typescript css html).each do |s|
  sindresorhus.skills << Skill.find_by_name(s)
end

irish = User.create!(
  first_name: "Paulo",
  last_name: " Irish",
  github_username: "paulirish",
  avatar_url: "https://avatars2.githubusercontent.com/u/39191?s=400&v=4",
  hourly_rate: 280,
  email: "me@paulirish.com",
  password: SecureRandom.base64(15)
)
%w(javascript perl css html).each do |s|
  irish.skills << Skill.find_by_name(s)
end

raval = User.create!(
  first_name: "Siraj",
  last_name: " Raval",
  github_username: "llsourcell",
  avatar_url: "https://avatars3.githubusercontent.com/u/1279609?s=400&v=4",
  hourly_rate: 480,
  email: "sirajraval@gmail.com",
  password: SecureRandom.base64(15)
)
%w(python).each do |s|
  raval.skills << Skill.find_by_name(s)
end

mojombo = User.create!(
  first_name: "Tom",
  last_name: " Preston-Werner",
  github_username: "mojombo",
  avatar_url: "https://avatars3.githubusercontent.com/u/1?s=400&v=4",
  hourly_rate: 410,
  email: "tom@mojombo.com",
  password: SecureRandom.base64(15)
)
%w(ruby javascript perl go erlang css html r).each do |s|
  mojombo.skills << Skill.find_by_name(s)
end

defunkt = User.create!(
  first_name: "Chris",
  last_name: " Wanstrath",
  github_username: "defunkt",
  avatar_url: "https://avatars2.githubusercontent.com/u/2?s=400&v=4",
  hourly_rate: 320,
  email: "chris@github.com",
  password: SecureRandom.base64(15)
)
%w(ruby javascript coffeescript python c).each do |s|
  defunkt.skills << Skill.find_by_name(s)
end

karpathy = User.create!(
  first_name: "Andrej",
  last_name: " Karpathy",
  github_username: "karpathy",
  avatar_url: "https://avatars2.githubusercontent.com/u/241138?s=400&v=4",
  hourly_rate: 290,
  email: "andrej.karpathy@gmail.com",
  password: SecureRandom.base64(15)
)
%w(python html css lua javascript c++).each do |s|
  karpathy.skills << Skill.find_by_name(s)
end

mbostock = User.create!(
  first_name: "Mike",
  last_name: " Bostock",
  github_username: "mbostock",
  avatar_url: "https://avatars2.githubusercontent.com/u/230541?s=400&v=4",
  hourly_rate: 220,
  email: "mike@ocks.org",
  password: SecureRandom.base64(15)
)
%w(javascript html css).each do |s|
  mbostock.skills << Skill.find_by_name(s)
end

otto = User.create!(
  first_name: "Mark",
  last_name: " Otto",
  github_username: "mbostock",
  avatar_url: "https://avatars2.githubusercontent.com/u/230541?s=400&v=4",
  hourly_rate: 270,
  email: "markd.otto@gmail.com",
  password: SecureRandom.base64(15)
)
%w(html css javascript).each do |s|
  otto.skills << Skill.find_by_name(s)
end

getify = User.create!(
  first_name: "Kyle",
  last_name: " Simpson",
  github_username: "getify",
  avatar_url: "https://avatars0.githubusercontent.com/u/150330?s=400&v=4",
  hourly_rate: 370,
  email: "getify@gmail.com",
  password: SecureRandom.base64(15)
)
%w(javascript).each do |s|
  getify.skills << Skill.find_by_name(s)
end

tian = User.create!(
  first_name: "Jackson",
  last_name: " Tian",
  github_username: "jacksontian",
  avatar_url: "https://avatars1.githubusercontent.com/u/327019?s=400&v=4",
  hourly_rate: 230,
  email: "shyvo1987@gmail.com",
  password: SecureRandom.base64(15)
)
%w(javascript css html).each do |s|
  tian.skills << Skill.find_by_name(s)
end

jlord = User.create!(
  first_name: "Jessica",
  last_name: " Lord",
  github_username: "jlord",
  avatar_url: "https://avatars0.githubusercontent.com/u/1305617?s=400&v=4",
  hourly_rate: 260,
  email: "jlord@gmail.com",
  password: SecureRandom.base64(15)
)
%w(javascript css html node.js).each do |s|
  jlord.skills << Skill.find_by_name(s)
end

grider = User.create!(
  first_name: "Stephen",
  last_name: " Grider",
  github_username: "stephengrider",
  avatar_url: "https://avatars3.githubusercontent.com/u/5003903?s=400&v=4",
  hourly_rate: 320,
  email: "stephengrider@gmail.com",
  password: SecureRandom.base64(15)
)
%w(javascript css html elixir react node.js vue).each do |s|
  grider.skills << Skill.find_by_name(s)
end

dhh = User.create!(
  first_name: "David",
  last_name: "Heinemeier Hansson",
  github_username: "dhh",
  avatar_url: "https://avatars3.githubusercontent.com/u/5003903?s=400&v=4",
  hourly_rate: 520,
  email: "david@basecamp.com",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails javascript coffeescript).each do |s|
  dhh.skills << Skill.find_by_name(s)
end

schacon = User.create!(
  first_name: "Scott",
  last_name: "Chacon",
  github_username: "schacon",
  avatar_url: "https://avatars3.githubusercontent.com/u/70?s=400&v=4",
  hourly_rate: 320,
  email: "schacon@gmail.com",
  password: SecureRandom.base64(15)
)
%w(ruby javascript c python coffeescript).each do |s|
  schacon.skills << Skill.find_by_name(s)
end

rodloboz = User.create!(
  first_name: "Rui",
  last_name: "Freitas",
  github_username: "rodloboz",
  avatar_url: "https://avatars3.githubusercontent.com/u/70?s=400&v=4",
  hourly_rate: 30,
  email: "dinnerpartysaboteur@gmail.com",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails javascript react vue elixir phoenix crystal).each do |s|
  rodloboz.skills << Skill.find_by_name(s)
end

askn = User.create!(
  first_name: "Aşkın",
  last_name: "Gedik",
  github_username: "askn",
  avatar_url: "https://avatars2.githubusercontent.com/u/632820?s=400&v=4",
  hourly_rate: 210,
  email: "askngdk@gmail.com",
  password: SecureRandom.base64(15)
)
%w(crystal ruby go).each do |s|
  askn.skills << Skill.find_by_name(s)
end

marceloboeira = User.create!(
  first_name: "Marcelo",
  last_name: "Boeira",
  github_username: "marceloboeira",
  avatar_url: "https://avatars2.githubusercontent.com/u/1898225?s=400&v=4",
  hourly_rate: 170,
  email: "marceloboeira@gmail.com",
  password: SecureRandom.base64(15)
)
%w(crystal python haskell scala go c swift rust vue).each do |s|
  marceloboeira.skills << Skill.find_by_name(s)
end

drujensen = User.create!(
  first_name: "Dru",
  last_name: "Jensen",
  github_username: "drujensen",
  avatar_url: "https://avatars3.githubusercontent.com/u/18718?s=400&v=4",
  hourly_rate: 190,
  email: "drujensen@gmail.com",
  password: SecureRandom.base64(15)
)
%w(ruby php crystal javascript).each do |s|
  drujensen.skills << Skill.find_by_name(s)
end

evancz = User.create!(
  first_name: "Evan",
  last_name: "Czaplicki",
  github_username: "evancz",
  avatar_url: "https://avatars2.githubusercontent.com/u/1658058?s=400&v=4",
  hourly_rate: 280,
  email: "evancz@gmail.com",
  password: SecureRandom.base64(15)
)
%w(haskell elm javascript html).each do |s|
  evancz.skills << Skill.find_by_name(s)
end

valim = User.create!(
  first_name: "José",
  last_name: "Valim",
  github_username: "josevalim",
  avatar_url: "https://avatars1.githubusercontent.com/u/9582?s=400&v=4",
  hourly_rate: 380,
  email: "jose.valim@plataformatec.com.br",
  password: SecureRandom.base64(15)
)
%w(elixir erlang ruby ruby\ on\ rails c c#).each do |s|
  valim.skills << Skill.find_by_name(s)
end

tenderlove = User.create!(
  first_name: "Aaron",
  last_name: "Patterson",
  github_username: "tenderlove",
  avatar_url: "https://avatars2.githubusercontent.com/u/3124?s=400&v=4",
  hourly_rate: 330,
  email: "tenderlove@github.com",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails c c++).each do |s|
  tenderlove.skills << Skill.find_by_name(s)
end

eileencodes = User.create!(
  first_name: "Eileen",
  last_name: "M. Uchitelle",
  github_username: "eileencodes",
  avatar_url: "https://avatars2.githubusercontent.com/u/1080678?s=400&v=4",
  hourly_rate: 390,
  email: "contact@eileencodes.com",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails c swift javascript go).each do |s|
  eileencodes.skills << Skill.find_by_name(s)
end

excid3 = User.create!(
  first_name: "Chris",
  last_name: "Oliver",
  github_username: "excid3",
  avatar_url: "https://avatars1.githubusercontent.com/u/67093?s=400&v=4",
  hourly_rate: 140,
  email: "contact@gorails.com",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails python javascript c++).each do |s|
  excid3.skills << Skill.find_by_name(s)
end

seb = User.create!(
  first_name: "Sébastien",
  last_name: "Saunier",
  github_username: "seb@saunier.me",
  avatar_url: "https://avatars0.githubusercontent.com/u/414418?s=400&v=4",
  hourly_rate: 170,
  email: "seb@saunier.me",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails css html javascript react).each do |s|
  seb.skills << Skill.find_by_name(s)
end

boris = User.create!(
  first_name: "Boris",
  last_name: "Paillard",
  github_username: "papillard",
  avatar_url: "https://avatars0.githubusercontent.com/u/2471555?s=400&v=4",
  hourly_rate: 60,
  email: "boris.paillard@gmail.com",
  password: SecureRandom.base64(15)
)
%w(html css).each do |s|
  boris.skills << Skill.find_by_name(s)
end

cpytel = User.create!(
  first_name: "Chad",
  last_name: "Pytel",
  github_username: "cpytel",
  avatar_url: "https://avatars1.githubusercontent.com/u/5015?s=400&v=4",
  hourly_rate: 280,
  email: "chad@thoughtbot.com",
  password: SecureRandom.base64(15)
)
%w(html css ruby swift ruby\ on\ rails javascript).each do |s|
  cpytel.skills << Skill.find_by_name(s)
end

clayton = User.create!(
  first_name: "Joshua",
  last_name: "Clayton",
  github_username: "joshuaclayton",
  avatar_url: "https://avatars1.githubusercontent.com/u/1574?s=400&v=4",
  hourly_rate: 220,
  email: "joshua@thoughtbot.com",
  password: SecureRandom.base64(15)
)
%w(ruby elm haskell javascript swift ruby\ on\ rails elixir).each do |s|
  clayton.skills << Skill.find_by_name(s)
end

velasco = User.create!(
  first_name: "German",
  last_name: "Velasco",
  github_username: "germsvel",
  avatar_url: "https://avatars0.githubusercontent.com/u/3245976?s=400&v=4",
  hourly_rate: 210,
  email: "german@thoughtbot.com",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails elixir python css html).each do |s|
  velasco.skills << Skill.find_by_name(s)
end

christoomey = User.create!(
  first_name: "Chris",
  last_name: "Toomey",
  github_username: "christoomey",
  avatar_url: "https://avatars1.githubusercontent.com/u/420113?s=400&v=4",
  hourly_rate: 180,
  email: "chris@thoughtbot.com",
  password: SecureRandom.base64(15)
)
%w(ruby ruby\ on\ rails javascript react haskell).each do |s|
  christoomey.skills << Skill.find_by_name(s)
end
puts "Created #{User.count} users!"







