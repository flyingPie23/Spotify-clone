# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "clears database"
User.destroy_all

puts "adding users"

user1= User.create(
  username: "Joji",
  email: "johnsmith@example.com",
  pfp: "https://s3.amazonaws.com/heights-photos/wp-content/uploads/2020/09/27162834/jojinectar.jpg",
  password: "123456"
)

user2= User.create(
  username: "James Marriott",
  email: "sarah.jones@gmail.com",
  pfp: "https://i0.wp.com/findyoursounds.com/wp-content/uploads/2022/07/James-Marriott-Grapes-e1657641830610.jpg?fit=1001%2C1035&ssl=1",
  password: "123456"
)

user3= User.create(
  username: "Lin Manuel Miranda",
  email: "mikebrown@hotmail.com",
  pfp: "https://assets.entrepreneur.com/content/3x2/2000/1652302233-GettyImages-1395845200.jpg?format=pjeg&auto=webp&crop=4:3",
  password: "123456"
)

user4= User.create(
  username: "Will Wood",
  email: "emily.wilson@yahoo.com",
  pfp: "https://i1.sndcdn.com/avatars-pT8UhHAuTGmu6vbV-jWJyoQ-t500x500.jpg",
  password: "123456"
)

user5= User.create(
  username: "Bo Burnham",
  email: "david.thomas@outlook.com",
  pfp: "https://media.newyorker.com/photos/60c11e82c8eec4d1031d5fe1/1:1/w_1080,h_1080,c_limit/Brody-BoBurnham.jpg",
  password: "123456"
)


user6= User.create(
  username: "loveJoy",
  email: "olivia.anderson@mail.com",
  pfp: "https://cloudinary-cdn.ffm.to/s--zAuRklnI--/w_256,h_256,c_lfill/f_jpg/https%3A%2F%2Fimagestore.ffm.to%2Flink%2Fb2e121d6f94a77203dc58904b81e4eb2.jpeg",
  password: "123456"
)

user7= User.create(
  username: "Queen",
  email: "benjamin.harris@yandex.com",
  pfp: "https://i.scdn.co/image/b040846ceba13c3e9c125d68389491094e7f2982",
  password: "123456"
)


user9= User.create(
  username: "Lilypichu",
  email: "sophia.carter@gmx.com",
  pfp: "https://i.scdn.co/image/ab6761610000e5eb181a909eb13bbe013eeb7708",
  password: "123456"
)

user10= User.create(
  username: "Max Wassen",
  email: "jennifer.robinson@aol.com",
  pfp: "https://i0.wp.com/www.faetonmusic.com/wp-content/uploads/2019/12/Max-Wassen-artist-faeton-music.jpg?fit=406%2C500&ssl=1",
  password: "123456"
)

user11= User.create(
  username: "Kendrick Lemar",
  email: "alex.miller@protonmail.com",
  pfp: "https://variety.com/wp-content/uploads/2017/11/kendrick-lamar-variety-hitmakers.jpg?w=1000",
  password: "123456"
)

user12= User.create(
  username: "The Weeknd",
  email: "lisa.davis@icloud.com",
  pfp: "https://www.theweeknd.com/files/2021/10/photo_202110_07_GENERAL-BRIANZIFF_THEWEEKND_800_1-WITH-BEAUTY-crop-1.jpeg",
  password: "123456"
)

user13= User.create(
  username: "BEENEE",
  email: "lisa@gmail.com",
  pfp: "https://m.media-amazon.com/images/I/41BfN5s5IgL._SX354_SY354_BL0_QL100__UXNaN_FMjpg_QL85_.jpg",
  password: "123456"
)

puts "done"
