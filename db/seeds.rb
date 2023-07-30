# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "clears database"
User.destroy_all
Song.destroy_all

puts "adding users and their songs"

user1 = User.create(
  username: "Joji",
  email: "johnsmith@example.com",
  pfp: "https://s3.amazonaws.com/heights-photos/wp-content/uploads/2020/09/27162834/jojinectar.jpg",
  password: "123456"
)
  local_audio_path = Rails.root.join('app', 'assets', 'audio', 'Joji - SLOW DANCING IN THE DARK.mp3')
  audio_file = ActiveStorage::Blob.create_and_upload!(
    io: File.open(local_audio_path),
    filename: 'SLOW DANCING IN THE DARK.mp3',
    content_type: 'audio/mpeg'
  )

    Song.create(
      title: "SLOW DANCING IN THE DARK",
      cover: "https://upload.wikimedia.org/wikipedia/en/0/01/Slow_Dancing_in_the_Dark.jpg",
      user: user1,
      mp3: audio_file
    )

  local_audio_path = Rails.root.join('app', 'assets', 'audio', 'Joji - Gimme Love.mp3')
  audio_file = ActiveStorage::Blob.create_and_upload!(
    io: File.open(local_audio_path),
    filename: 'Joji - Gimme Love.mp3',
    content_type: 'audio/mpeg'
  )

    Song.create(
      title: "Gimme Love",
      cover: "https://i.scdn.co/image/ab67616d0000b2731ac0a83eb2c23b29c480e68a",
      user: user1,
      mp3: audio_file
    )

  local_audio_path = Rails.root.join('app', 'assets', 'audio', 'Joji & Diplo - Daylight (Official Music Video).mp3')
  audio_file = ActiveStorage::Blob.create_and_upload!(
    io: File.open(local_audio_path),
    filename: 'Joji & Diplo - Daylight (Official Music Video).mp3',
    content_type: 'audio/mpeg'
  )

    Song.create(
      title: "DayLight",
      cover: "https://i.scdn.co/image/ab67616d0000b2730e991b59cee17246a5e604d0",
      user: user1,
      mp3: audio_file
    )

  local_audio_path = Rails.root.join('app', 'assets', 'audio', 'Joji - Sanctuary (Official Video).mp3')
  audio_file = ActiveStorage::Blob.create_and_upload!(
    io: File.open(local_audio_path),
    filename: 'Joji - Sanctuary (Official Video).mp3',
    content_type: 'audio/mpeg'
  )

    Song.create(
      title: "Sanctuary",
      cover: "https://upload.wikimedia.org/wikipedia/en/2/2e/Joji_-_Sanctuary.png",
      user: user1,
      mp3: audio_file
    )

  local_audio_path = Rails.root.join('app', 'assets', 'audio', 'Joji - Feeling Like The End.mp3')
  audio_file = ActiveStorage::Blob.create_and_upload!(
    io: File.open(local_audio_path),
    filename: 'Joji - Feeling Like The End.mp3',
    content_type: 'audio/mpeg'
  )

    Song.create(
      title: "Feeling Like The End",
      cover: "https://imgx.sonora.id/crop/0x0:0x0/360x240/photo/2022/11/11/1jpg-20221111075852.jpg",
      user: user1,
      mp3: audio_file
    )

  local_audio_path = Rails.root.join('app', 'assets', 'audio', 'Joji - Die For You.mp3')
  audio_file = ActiveStorage::Blob.create_and_upload!(
    io: File.open(local_audio_path),
    filename: 'Joji - Die For You.mp3',
    content_type: 'audio/mpeg'
  )

    Song.create(
      title: "Die for You",
      cover: "https://i1.sndcdn.com/artworks-z82gslTy92SxQdTT-A1ogUQ-t500x500.jpg",
      user: user1,
      mp3: audio_file
    )

user2 = User.create(
  username: "James Marriott",
  email: "sarah.jones@gmail.com",
  pfp: "https://i0.wp.com/findyoursounds.com/wp-content/uploads/2022/07/James-Marriott-Grapes-e1657641830610.jpg?fit=1001%2C1035&ssl=1",
  password: "123456"
)

  Song.create(
    title: "So Long",
    cover: "https://images.genius.com/c260fd115ab36d1dd83a6c8a57139e3a.1000x1000x1.png",
    user: user2
  )
  Song.create(
    title: "Car Light",
    cover: "https://images.genius.com/3ec1e5cc64dfdd88749714afe524798f.1000x1000x1.png",
    user: user2
  )
  Song.create(
    title: "Grapes",
    cover: "https://images.genius.com/5c0debf484744cb0af272ac819978764.400x400x1.jpg",
    user: user2
  )
  Song.create(
    title: "Sleeping on Trains",
    cover: "https://i.scdn.co/image/ab67616d0000b27314370ea5fed4beca8d5c7a35",
    user: user2
  )
  Song.create(
    title: "Where Everyone Has Gone ?",
    cover: "https://i.ytimg.com/vi/o8OUMq37nBI/maxresdefault.jpg",
    user: user2
  )
  Song.create(
    title: "Gold",
    cover: "https://pbs.twimg.com/media/FGNFinUXIAQCt7f?format=jpg&name=large",
    user: user2
  )


user3 = User.create(
  username: "Lin Manuel Miranda",
  email: "mikebrown@hotmail.com",
  pfp: "https://assets.entrepreneur.com/content/3x2/2000/1652302233-GettyImages-1395845200.jpg?format=pjeg&auto=webp&crop=4:3",
  password: "123456"
)
  Song.create(
    title: "in the Heights",
    cover: "https://m.media-amazon.com/images/M/MV5BMzM1ZDY0YTktZTYzZi00MjZjLTllMDMtMmNlMmM5NmY4ZjllXkEyXkFqcGdeQXVyMTA1OTcyNDQ4._V1_.jpg",
    user: user3
  )
  Song.create(
    title: "9600",
    cover: "https://i0.wp.com/www.michigandaily.com/wp-content/uploads/2021/06/InTheHeights.jpg?fit=2400%2C1600&ssl=1",
    user: user3
  )
  Song.create(
    title: "Alexander Hamilton",
    cover: "https://upload.wikimedia.org/wikipedia/en/8/83/Hamilton-poster.jpg",
    user: user3
  )
  Song.create(
    title: "My Shot",
    cover: "https://images.firstpost.com/wp-content/uploads/2020/07/hamilton-6401.jpg",
    user: user3
  )
  Song.create(
    title: "Waiting On a Miracle",
    cover: "https://pm1.aminoapps.com/8166/15dfde6165b9770d5a21b33e7383283c00c7b280r1-1026-614v2_hq.jpg",
    user: user3
  )
  Song.create(
    title: "The Room Where It Happend",
    cover: "https://149674310.v2.pressablecdn.com/wp-content/uploads/2021/09/Burr.jpg",
    user: user3
  )

user4= User.create(
  username: "Will Wood",
  email: "emily.wilson@yahoo.com",
  pfp: "https://i1.sndcdn.com/avatars-pT8UhHAuTGmu6vbV-jWJyoQ-t500x500.jpg",
  password: "123456"
)

  Song.create(
    title: "I / ME / MYSELF",
    cover: "https://i1.sndcdn.com/artworks-oxN4sL2vLW7Z7H0G-Jrx9lw-t500x500.jpg",
    user: user4
  )
  Song.create(
    title: "The Main Character",
    cover: "https://preview.redd.it/e15ar0oaykf91.jpg?auto=webp&s=30a10af55f426825d4827cecfa6ca0b48762bc19",
    user: user4
  )
  Song.create(
    title: "Your Body, My Temple",
    cover: "https://i.scdn.co/image/ab67616d0000b2732d4eb49471495b0e22e0120e",
    user: user4
  )
  Song.create(
    title: "White Noise",
    cover: "https://cloutcloutclout.com/wp-content/uploads/2022/07/snowy2-1649690441626-scaled.jpg",
    user: user4
  )
  Song.create(
    title: "Falling Up",
    cover: "https://images.genius.com/a173ea1c914d9017d5956c6f121b6c7b.374x374x1.png",
    user: user4
  )

user5 = User.create(
  username: "Bo Burnham",
  email: "david.thomas@outlook.com",
  pfp: "https://media.newyorker.com/photos/60c11e82c8eec4d1031d5fe1/1:1/w_1080,h_1080,c_limit/Brody-BoBurnham.jpg",
  password: "123456"
)
  Song.create(
    title: "Welcome to the Internet",
    cover: "https://uproxx.com/wp-content/uploads/2021/06/bo-burnham.jpeg?w=1280&h=660&crop=1",
    user: user5
  )
  Song.create(
    title: "Look Whos Inside Again",
    cover: "https://64.media.tumblr.com/e65a7b3b55bdf0146be7d385ec8a40b2/ba92a89faf9f36af-45/s1280x1920/ed3888486c50f5afa52cff9df568b3c08f6dd946.png",
    user: user5
  )
  Song.create(
    title: "Art is Dead",
    cover: "https://i.pinimg.com/736x/f8/c2/9d/f8c29db59597b71af403b9e97f584ac1.jpg",
    user: user5
  )
  Song.create(
    title: "1985",
    cover: "https://media1.inlander.com/inlander/imager/u/original/23972254/culture5-1-ee8a102434753aa3.jpg",
    user: user5
  )
  Song.create(
    title: "Problematic",
    cover: "https://townsquare.media/site/442/files/2022/05/attachment-bo-burnham-inside.jpg?w=980&q=75",
    user: user5
  )
  Song.create(
    title: "That Funny Feeling",
    cover: "https://i.pinimg.com/originals/3d/f9/a5/3df9a542dd4f1d167c097232ec396073.jpg",
    user: user5
  )


user6 = User.create(
  username: "loveJoy",
  email: "olivia.anderson@mail.com",
  pfp: "https://backend.alterart.pl/media/CACHE/images/images/2022/10-21/lovejoy_slider/0c72eb697ec5b5c2c9473501a72be32c.jpg",
  password: "123456"
)
  Song.create(
    title: "Portrait of a Blank Slate",
    cover: "https://i.ytimg.com/vi/yzGQc6sFHkg/maxresdefault.jpg",
    user: user6
  )
  Song.create(
    title: "Call Me What You Like",
    cover: "https://shlyrics.com/wp-content/uploads/2023/02/Call-Me-What-You-Like-Lyrics-Lovejoy.jpg",
    user: user6
  )
  Song.create(
    title: "One Day",
    cover: "https://i.ytimg.com/vi/WXqbR-h5VMY/mqdefault.jpg",
    user: user6
  )
  Song.create(
    title: "Sex Sells",
    cover: "https://images.genius.com/6782638990eef34319c738b394d480d6.1000x1000x1.png",
    user: user6
  )
  Song.create(
    title: "Knee Deep In ATP",
    cover: "https://i.scdn.co/image/ab67616d0000b273b14662d2473a7b62edc15935",
    user: user6
  )
  Song.create(
    title: "Privately Owned Spiral Galaxy",
    cover: "https://images.genius.com/4119e127c7b8711d9db61b73b4c1e98c.1000x1000x1.jpg",
    user: user6
  )

user7 = User.create(
  username: "Queen",
  email: "benjamin.harris@yandex.com",
  pfp: "https://i.scdn.co/image/b040846ceba13c3e9c125d68389491094e7f2982",
  password: "123456"
)
  Song.create(
    title: "Bohemian Rhapsody",
    cover: "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B19/production/_86352291_bohemianrhapsody.jpg",
    user: user7
  )
  Song.create(
    title: "We Will Rock You",
    cover: "https://london-coliseum-live-assets.s3.amazonaws.com/uploads/2022/11/7549_22_WWRY_Coliseum_2000x1000_v2-800x600.jpg",
    user: user7
  )
  Song.create(
    title: "Dont Stop Me Now",
    cover: "https://townsquare.media/site/366/files/2019/02/GettyImages-75509449.jpg",
    user: user7
  )
  Song.create(
    title: "Under Pressure",
    cover: "https://i.scdn.co/image/ab67616d0000b273d254ca497999ae980a5a38c5",
    user: user7
  )
  Song.create(
    title: "An Other One Bites The Dust",
    cover: "https://upload.wikimedia.org/wikipedia/en/thumb/4/4d/Another_one_bites_the_dust.jpg/220px-Another_one_bites_the_dust.jpg",
    user: user7
  )
  Song.create(
    title: "Killer Queen",
    cover: "https://upload.wikimedia.org/wikipedia/en/f/f0/Killer_Queen_%28cover_art%29.jpg",
    user: user7
  )


user8 = User.create(
  username: "Lilypichu",
  email: "sophia.carter@gmx.com",
  pfp: "https://i.scdn.co/image/ab6761610000e5eb181a909eb13bbe013eeb7708",
  password: "123456"
)
  Song.create(
    title: "Dreamy Night",
    cover: "https://i.ytimg.com/vi/DXuNJ267Vss/maxresdefault.jpg",
    user: user8
  )
  Song.create(
    title: "Last Cup Of Coffee",
    cover: "https://i.scdn.co/image/ab67616d0000b2735f475a92b764261fb40727ba",
    user: user8
  )
  Song.create(
    title: "Happy",
    cover: "https://i.ytimg.com/vi/F_Bj_6idYqc/maxresdefault.jpg",
    user: user8
  )
  Song.create(
    title: "Disappear",
    cover: "https://cdns-images.dzcdn.net/images/cover/01af411db01b6b1625395acc459ce8b9/264x264.jpg",
    user: user8
  )
  Song.create(
    title: "POM POM",
    cover: "https://images.genius.com/3d19d975962d6fb65a8cc95f9cfec899.1000x1000x1.png",
    user: user8
  )
  Song.create(
    title: "Sunshine and Butterflies",
    cover: "https://images.genius.com/bf5132b520fa257368b0112d276d6748.1000x1000x1.png",
    user: user8
  )

user9 = User.create(
  username: "Max Wassen",
  email: "jennifer.robinson@aol.com",
  pfp: "https://i0.wp.com/www.faetonmusic.com/wp-content/uploads/2019/12/Max-Wassen-artist-faeton-music.jpg?fit=406%2C500&ssl=1",
  password: "123456"
)
  Song.create(
    title: "LoveLove.mp3",
    cover: "https://i1.sndcdn.com/artworks-QOTirk6Axk3406cE-oWFkzw-t500x500.jpg",
    user: user9
  )
  Song.create(
    title: "Cubicle",
    cover: "https://i.ytimg.com/vi/4t8ri6AvS2c/maxresdefault.jpg",
    user: user9
  )
  Song.create(
    title: "Freak",
    cover: "https://i.scdn.co/image/ab67616d0000b27377c751940eb1bb44a8599533",
    user: user9
  )
  Song.create(
    title: "Stylish AF",
    cover: "https://i.scdn.co/image/ab67616d0000b27377d10833825bff95ae7759c4",
    user: user9
  )
  Song.create(
    title: "Good Times",
    cover: "https://i.scdn.co/image/ab67616d0000b27377bec11ddf519e18457ef200",
    user: user9
  )
  Song.create(
    title: "Bullshit",
    cover: "https://i.scdn.co/image/ab67616d0000b2736a759a85a94bbf163179c326",
    user: user9
  )


user10 = User.create(
  username: "BEENEE",
  email: "lisa@gmail.com",
  pfp: "https://m.media-amazon.com/images/I/41BfN5s5IgL._SX354_SY354_BL0_QL100__UXNaN_FMjpg_QL85_.jpg",
  password: "123456"
)
  Song.create(
    title: "A little While",
    cover: "https://images.genius.com/18498a26eb34a944935ae6558a734957.1000x1000x1.png",
    user: user10
  )
  Song.create(
    title: "Night Guarden",
    cover: "https://i.ytimg.com/vi/lmFiQp6wbZA/maxresdefault.jpg",
    user: user10
  )
  Song.create(
    title: "Green Honda",
    cover: "https://images.genius.com/19dcc89cfd8e453df3210030ccdad5ca.1000x1000x1.png",
    user: user10
  )
  Song.create(
    title: "Wishfull Thinking",
    cover: "https://images.genius.com/f625aba314a85baf5f20c020d3ca07c8.1000x1000x1.png",
    user: user10
  )
  Song.create(
    title: "Evil Spider",
    cover: "https://pbs.twimg.com/media/EORQ7enWkAYe50v.jpg:large",
    user: user10
  )
  Song.create(
    title: "Soft Side",
    cover: "https://images.genius.com/acb26489b3d523eed464b0520f2f0e7a.1000x1000x1.png",
    user: user10
  )

user11 = User.create(
  username: "The Weeknd",
  email: "jennifer@weeknd.com",
  pfp: "https://readdork.com/wp-content/uploads/2022/01/The-Weeknd-2022.jpg",
  password: "123456"
)
  Song.create(
    title: "Star Boy",
    cover: "https://i.pinimg.com/originals/bc/49/fc/bc49fc16bddad7e23cd698af7f5504bf.jpg",
    user: user11
  )
  Song.create(
    title: "Die for You",
    cover: "https://upload.wikimedia.org/wikipedia/en/8/81/The_Weeknd_-_Die_for_You.png",
    user: user11
  )
  Song.create(
    title: "Blinding Lights",
    cover: "https://upload.wikimedia.org/wikipedia/en/e/e6/The_Weeknd_-_Blinding_Lights.png",
    user: user11
  )
  Song.create(
    title: "heartless",
    cover: "https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36",
    user: user11
  )
  Song.create(
    title: "Save Your Tears",
    cover: "https://i.ytimg.com/vi/LIIDh-qI9oI/maxresdefault.jpg",
    user: user11
  )
  Song.create(
    title: "Take My Breath",
    cover: "https://www.nme.com/wp-content/uploads/2021/08/weeknd-take-my-breath-music-video@2000x1270.jpg",
    user: user11
  )


user12 = User.create(
  username: "YAOSOBI",
  email: "lindaa@gmail.com",
  pfp: "https://www.uniqlo.com/jp/ja/contents/feature/ut-magazine/img/s97/hero.jpg",
  password: "123456"
)
  Song.create(
    title: "夜に駆ける",
    cover: "https://i1.sndcdn.com/artworks-YrY4Kxz6gU3ytfIp-bAqfyA-t500x500.jpg",
    user: user12
  )
  Song.create(
    title: "ハルカ",
    cover: "https://i1.sndcdn.com/artworks-y1gtYaiy6teGDxmO-tjCSOA-t500x500.jpg",
    user: user12
  )
  Song.create(
    title: "たぶん",
    cover: "https://i.ytimg.com/vi/tYP-i_tShDY/maxresdefault.jpg",
    user: user12
  )
  Song.create(
    title: "怪物",
    cover: "https://upload.wikimedia.org/wikipedia/zh/2/2a/Kaibutsucoverart.jpg",
    user: user12
  )
  Song.create(
    title: "あの夢をなぞって",
    cover: "https://i.scdn.co/image/ab67616d0000b273684d81c9356531f2a456b1c1",
    user: user12
  )
  Song.create(
    title: "祝福",
    cover: "https://www.lisani.jp/admin/wp-content/uploads/2022/09/2209251800-yh-005-1000x630.jpg",
    user: user12
  )


puts "done"
