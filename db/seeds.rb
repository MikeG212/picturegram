# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all

def attach_avatar(user, url)
    image = open(url)
    user.avatar.attach(io: image, filename: "temp.jpg")
    user.save!
end

def attach_photo(post, url)
    image = open(url)
    post.photo.attach(io: image, filename: "temp.jpg")
    post.save!
end

johnJonah= User.create!({username: "johnJonah", email: "jj@dailybugle.com", password: "starwars", bio: "Bring me pictures of Spider-man!"})
peterParker = User.create!({username: "pParker", email: "peter@dailybugle.com", password: "starwars", bio: "Hello world!"})
spiderMan = User.create!({username: "spiderMan", email: "spiderMan@mail.com", password: "starwars", bio: "Your friendly neighborhood Spiderman"})
maryJane = User.create!({username: "maryJane", email: "mj@midtown.edu", password: "starwars", bio: "Face it, tiger. You just hit the jackpot"})
auntMay = User.create!({username: "mayParker", email: "may@mail.com", password: "starwars"})
uncleBen = User.create!({username: "benParker", email: "ben@mail.com", password: "starwars", bio: "With great power comes great responsibility"})
harryOsborn = User.create!({username: "harryOsborn", email: "harry@oscorp.com", password: "starwars"})
normanOsborn = User.create!({username: "greenGoblin", email: "norman@oscorp.com", password: "starwars"})
flashThompson = User.create!({username: "flashThompson", email: "flash@midtown.edu", password: "starwars", bio: "Get lost, bookworm. Spider-Man rules!"})
milesMorales = User.create!({username: "milesMorales", email: "miles@mail.com", password: "starwars", bio: "Just trying to make it in this cold world"})
gwenStacy = User.create!({username: "gwenStacy", email: "gwen@midtown.edu", password: "starwars", bio: "What makes it precious is that it ends"})
spiderHam = User.create!({username: "spiderHam", email: "peterporker@mail.com", password: "starwars", bio: "You got a problem with cartoons?!"})
nicolasCage = User.create!({username: "1933PeterParker", email: "nicholascage@nationaltreasure.com", password: "starwars", bio: "I'm going to steal the Declaration of Independence"})
tonyStark = User.create!({username: "tonyStark", email: "ironman@starkindustries.com", password: "starwars", bio: "genius billionaire playboy philanthropist"})
venom = User.create!({username: "venom", email: "eddie@dailybugle.com", password: "starwars", bio: "Inspired an Eminem song"})
prowler = User.create!({username: "uncleEddie", email: "uncleEddie@mail.com", password: "starwars", bio: "*shoulder touch* Hey"})
tomHolland = User.create!({username: "tomHolland", email: "tomHolland@mail.com", password: "starwars", bio: "Mr. Stark, I don't feel so good"})
tobeyMaguire = User.create!({username: "tobeyMaguire", email: "tobeyMaguire@mail.com", password: "starwars", bio: "Please forget about my emo dancing phase"})
andrewGarfield = User.create!({username: "andrewGarfield", email: "andrewGarfield@mail.com", password: "starwars", bio: "Invented Facebook"})
ned = User.create!({username: "nedLeeds", email: "ned@mail.com", password: "starwars", bio: "Guy in the chair"})
deadpool = User.create!({username: "deadpool", email: "deadpool@mail.com", password: "starwars", bio: "Frances!?"})
lego = User.create!({username: "legoSpiderman", email: "legoSpiderman@mail.com", password: "starwars", bio: "Everything is awesome"})
derekJeter = User.create!({username: "derekJeter", email: "thecaptain2@yankeemail.com", password: "starwars", bio: "The Captain."})
holdenCaulfield = User.create!({username: "holdenCaulfield", email: "catcher@mail.com", password: "starwars", bio: "RIP Ali. I'm always saying “Glad to've met you” to someone I'm not at all glad I met."})
spiderPig = User.create!({username: "spiderPig", email: "spiderPig@springfield.com", password: "starwars", bio: "Does what ever a spider-pig can."})

#avatars (plus default avatar)
attach_avatar(johnJonah, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/john-jonah-min.jpeg")
attach_avatar(peterParker, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/peter-parker-min.jpeg")
attach_avatar(spiderMan, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/spiderman-min.jpeg")
attach_avatar(maryJane, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/mary-jane-min.jpeg")
attach_avatar(auntMay, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/aunt-may.jpeg")
attach_avatar(uncleBen, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/ben-parker-min.jpeg")
attach_avatar(harryOsborn, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/harry-osborn-min.jpeg")
attach_avatar(milesMorales, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/miles-morales-min.jpg")

attach_avatar(gwenStacy, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/gwen-stacy-min.jpeg")
attach_avatar(spiderHam, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/spider-ham.jpeg")
attach_avatar(nicolasCage, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/nicolas-cage-min.jpeg")
attach_avatar(tonyStark, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/tony-stark-min.jpeg")
attach_avatar(venom, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/venom-min.jpeg")
attach_avatar(prowler, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/prowler-min.jpeg")
attach_avatar(tomHolland, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/tom-holland-min.jpeg")
attach_avatar(andrewGarfield, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/andrew-garfield-min.jpeg")

attach_avatar(deadpool, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/deadpool-min.jpeg")
attach_avatar(lego, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/lego-spiderman-min.jpeg")
attach_avatar(derekJeter, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/derek-jeter-min.jpeg")
attach_avatar(milesMorales, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/miles-morales-min.jpg")
attach_avatar(flashThompson, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/flash-thompson-min.jpeg")

attach_avatar(tobeyMaguire, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/tobey-maguire-min.jpeg")
attach_avatar(ned, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/ned.jpeg")
attach_avatar(holdenCaulfield, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/holden-caulfield-min.jpg")
attach_avatar(spiderPig, "https://s3-us-west-1.amazonaws.com/spidergram-dev/avatar/spider-pig-min.jpeg")

#posts (15)
post1 = Post.new({caption: "My Spidey Sense is tingling!", user_id: milesMorales.id })
url1 = "https://s3-us-west-1.amazonaws.com/spidergram-dev/images/spiderVerse.jpg";
attach_photo(post1, url1)

post2 = Post.new({caption: "All black everything!", user_id: spiderMan.id })
url2 = "https://s3-us-west-1.amazonaws.com/spidergram-dev/images/blackSuit.jpg"
attach_photo(post2, url2)

post3 = Post.new({caption: "Check out my new movie", user_id: spiderMan.id })
url3 = "https://s3-us-west-1.amazonaws.com/spidergram-dev/images/spidermanMoviePoster.jpg"
attach_photo(post3, url3)

post4 =  Post.new({caption: "The rest is history...", user_id: maryJane.id })
url4 = "https://s3-us-west-1.amazonaws.com/spidergram-dev/images/mary-jane-watson.jpg"
attach_photo(post4, url4)

post5 =  Post.new({caption: "New year, new me...", user_id: peterParker.id })
url5 = "https://s3-us-west-1.amazonaws.com/spidergram-dev/images/PeterParkerAvatar.jpg"
attach_photo(post5, url5)

post6 =  Post.new({caption: "Best crossover since Allen Iverson", user_id: derekJeter.id })
url6 = "https://s3-us-west-1.amazonaws.com/spidergram-dev/images/derek-jeter-min.jpeg"
attach_photo(post5, url5)

#likes (200)
like1 = Like.create({post_id: post1.id, user_id: peterParker.id})
like2 = Like.create({post_id: post1.id, user_id: spiderMan.id})
like3 = Like.create({post_id: post1.id, user_id: spiderHam.id})
like4 = Like.create({post_id: post1.id, user_id: gwenStacy.id})
like5 = Like.create({post_id: post1.id, user_id: prowler.id})
like6 = Like.create({post_id: post2.id, user_id: peterParker.id})
like7 = Like.create({post_id: post2.id, user_id: spiderMan.id})
like8 = Like.create({post_id: post2.id, user_id: spiderHam.id})
like9 = Like.create({post_id: post2.id, user_id: gwenStacy.id})
like10 = Like.create({post_id: post3.id, user_id: prowler.id})
like11 = Like.create({post_id: post3.id, user_id: peterParker.id})
like12 = Like.create({post_id: post3.id, user_id: spiderMan.id})
like13 = Like.create({post_id: post3.id, user_id: spiderHam.id})
like14 = Like.create({post_id: post3.id, user_id: gwenStacy.id})
like15 = Like.create({post_id: post3.id, user_id: prowler.id})
like16 = Like.create({post_id: post4.id, user_id: peterParker.id})
like17 = Like.create({post_id: post4.id, user_id: spiderMan.id})
like18 = Like.create({post_id: post4.id, user_id: spiderHam.id})
like19 = Like.create({post_id: post4.id, user_id: auntMay.id})
like20 = Like.create({post_id: post4.id, user_id: derekJeter.id})
like21 = Like.create({post_id: post4.id, user_id: tomHolland.id})
like22 = Like.create({post_id: post4.id, user_id: andrewGarfield.id})
like23 = Like.create({post_id: post5.id, user_id: tobeyMaguire.id})
like24 = Like.create({post_id: post5.id, user_id: spiderMan.id})
like25 = Like.create({post_id: post5.id, user_id: spiderHam.id})
like26 = Like.create({post_id: post5.id, user_id: auntMay.id})
like27 = Like.create({post_id: post5.id, user_id: derekJeter.id})
like28 = Like.create({post_id: post5.id, user_id: tomHolland.id})
like29 = Like.create({post_id: post5.id, user_id: andrewGarfield.id})
like30 = Like.create({post_id: post5.id, user_id: tobeyMaguire.id})

#comments (20)

comment1 = Comment.create({ post_id: post3.id, user_id: tobeyMaguire.id, body: "Looks awesome :)"})
comment2 = Comment.create({ post_id: post3.id, user_id: deadpool.id, body: "^^You misspelled LAME :)"})
comment3 = Comment.create({ post_id: post3.id, user_id: johnJonah.id, body: "The Webbed Menace"})
comment4 = Comment.create({ post_id: post3.id, user_id: derekJeter.id, body: "Makes me proud to be a New Yorker!"})
comment5 = Comment.create({ post_id: post3.id, user_id: holdenCaulfield.id, body: "Phony..."})

comment6 = Comment.create({ post_id: post2.id, user_id: tobeyMaguire.id, body: "I've been trying to forget about this"})
comment7 = Comment.create({ post_id: post2.id, user_id: spiderMan.id, body: "Please don't start dancing"})
comment8 = Comment.create({ post_id: post2.id, user_id: venom.id, body: "Copycat...."})
comment9 = Comment.create({ post_id: post2.id, user_id: holdenCaulfield.id, body: "Phony..."})
comment10 = Comment.create({ post_id: post2.id, user_id: johnJonah.id, body: "The Black Webbed Menace"})

comment11 = Comment.create({ post_id: post5.id, user_id: auntMay.id, body: "I love you, Peter"})
comment12 = Comment.create({ post_id: post5.id, user_id: peterParker.id, body: "You're embarassing me"})
comment13 = Comment.create({ post_id: post5.id, user_id: tomHolland.id, body: "How are you still in high school!?... you look at least 25"})
comment14 = Comment.create({ post_id: post5.id, user_id: holdenCaulfield.id, body: "Phony..."})
comment15 = Comment.create({ post_id: post5.id, user_id: johnJonah.id, body: "Parker... you're fired"})
comment16 = Comment.create({ post_id: post5.id, user_id: johnJonah.id, body: "Actually...I need more pictures of Spider-Man, Parker, you're rehired"})

#following

