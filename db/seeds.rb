# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Like.destroy_all
User.destroy_all
Beer.destroy_all


User.create(name: "Raza J", location: "60647")
User.create(name: "Sam G", location: "60622")
User.create(name: "Ivan L", location: "60647")
User.create(name: "Stefani W", location: "60622")
User.create(name: "Ashley E", location: "60622")
User.create(name: "Kyle B", location: "60647")


Beer.create(name: "Haley R", location: "The Native", brand: "Bell's Oberon", image: "https://allaboutbeer.com/wp-content/uploads/2014/03/Oberon-Ale-Eccentric-Cafe.jpg", uploader_comment: "Just in time for patio season!", chugs: 12, chucks: 3)
Beer.create(name: "Jess S", location: "The Owl", brand: "Stella", image: "https://media.timeout.com/images/105309116/1024/576/image.jpg", uploader_comment: "The perfect pour", chugs: 10, chucks: 5)
Beer.create(name: "Donald T", location: "The Corner Bar", brand: "Bud Light/America", image: "https://bottledrogersbeers.files.wordpress.com/2012/10/mudshark-octoberfest-2.jpg", uploader_comment: "The best beer, amazing, huge", chugs: 2, chucks: 18)
Beer.create(name: "Isaac M", location: "Green Eye Lounge", brand: "Allagash", image: "https://bdn-data.s3.amazonaws.com/blogs.dir/126/files/2013/10/Clean-Glass.jpg", uploader_comment: "On special, all week!", chugs: 16, chucks: 7)
Beer.create(name: "Joanna L", location: "The Emporium", brand: "Modern Times", image: "https://untappd.akamaized.net/photos/2019_04_14/1ae544fa419a74189adfa38b50fe0d6c_raw.jpg", uploader_comment: "Pairs well with pinball", chugs: 8, chucks: 9)
Beer.create(name: "Jack O", location: "Logan Bar", brand: "Spotted Cow", image: "https://i.pinimg.com/originals/ba/56/46/ba5646b8577230e586dc9e1512bf640e.jpg", uploader_comment: "We got a keg in special", chugs: 22, chucks: 1)


Comment.create(text: "Coming in for one tonight", user_id: User.find_by(name: "Raza J").id, beer_id: Beer.find_by(name: "Haley R").id)
Comment.create(text: "Patio Seasoooooon!", user_id: User.find_by(name: "Stefani W").id, beer_id: Beer.find_by(name: "Haley R").id)
Comment.create(text: "Nice Pour", user_id: User.find_by(name: "Ivan L").id, beer_id: Beer.find_by(name: "Jess S").id)
Comment.create(text: "No, absolutely not", user_id: User.find_by(name: "Kyle B").id, beer_id: Beer.find_by(name: "Donald T").id)
Comment.create(text: "Your beer is bad, and you should feel bad", user_id: User.find_by(name: "Ashley E").id, beer_id: Beer.find_by(name: "Donald T").id)
Comment.create(text: "Nothing like a B-light with my bros", user_id: User.find_by(name: "Sam G").id, beer_id: Beer.find_by(name: "Donald T").id)
Comment.create(text: "Yummy", user_id: User.find_by(name: "Raza J").id, beer_id: Beer.find_by(name: "Isaac M").id)
Comment.create(text: "Not my fav, but I love this bar", user_id: User.find_by(name: "Stefani W").id, beer_id: Beer.find_by(name: "Isaac M").id)
Comment.create(text: "Average beer, but great pinball", user_id: User.find_by(name: "Ivan L").id, beer_id: Beer.find_by(name: "Joanna L").id)