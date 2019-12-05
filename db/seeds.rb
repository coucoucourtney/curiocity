# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying checkpoints"
Checkpoint.destroy_all

puts "destroying routes"
Route.destroy_all

puts "destroying buildings..."
Building.destroy_all

buildings_data = [
  {   name: "The Amyron Apartments",
      architects: "Alexandre Leonard",
      year: "1941",
      neighborhood: "Xuhui",
      address: "14 Gao'an Lu /Rte Cohen",
      description: "French architect Alexandre Leonard’s love poem to his Russian wife, Anna Leontiev – they lived in the two-storey penthouse and their initials are in the entrance lobby terrazzo. Maritime Art Deco, from the balconies to the ship’s railing staircase.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/43c768d2b848a0e943e7/Amyron_Apartments_main.jpeg",
      architectural_style:"Modern architecture",
      metro_stop:"Zhaojiabang Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/43c768d2b848a0e943e7/Amyron_Apartments_main.jpeg"]
      },
  {   name: "Rong Mansion",
      architects: "Alexandre Leonard",
      year: "1935",
      neighborhood: "Xuhui",
      address: "20, Lane 18, Gao An Road/Route Cohen",
      description: "Another Maritime Art Deco beauty, with cruise ship lines, the house was built for Shanghai’s fabulously wealthy “Textile King” – and later ‘red capitalist – Rong Desheng. All of Shanghai was abuzz with talk of his kidnapping, from the gates of this house, in 1946.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/8aa87198f762a0a12651/Rong_Mansion_main.png",
      architectural_style:"Western style",
      metro_stop:"Hengshang Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/f7fff6d487db8fa87f10/Rong-Mansion_1.jpg"]
      },
  {   name: "Bank of China",
      architects: "Luke Him Sau and Palmer & Turner",
      year: "1933",
      neighborhood: "Huangpu",
      address: "52 Ningbo Lu & 355 Jiangxi Lu/Ningpo Road & Kiangse Road",
      description: "It was built on the site of the old German Club (c. 1907). It housed the headquarters of the Bank of China. The stunted appearance of the building is attributed to Victor Sassoon's insistence that no other building on the Bund could rise higher than his.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/ae16569351535a510397/BOC_main.jpg",
      architectural_style: "Western Style",
      metro_stop: "West Nanjing Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/3e77a4f98e9daa861d39/BOC_1.jpeg","http://lc-lyUmBNQE.cn-n1.lcfile.com/ffd228a9e0ae4557a917/BOC_2.jpg"]
      },
  {   name: "Cercle Sportif Francais",
      architects: "Leonard, Veysseyre & Kruze",
      year: "1929",
      neighborhood: "Xuhui",
      address: "58 Maoming Nan Lu/Rue Cardinal Mercier",
      description: "The Cercle Sportif Francais on Route Cardinal Mercier (today the Okura Garden hotel) was the center of life for the cream of the Xuhui. Built by the French architect firm Vesseyre & Leonard it opened in 1926 was certainly the largest design of the firm in Shanghai. In a effort to compete with Britain it was partly paid by French state money in order to project French colonial power in the city. The Cercle Sportif moved in the new building from what later became the College Municipal Francais. Construction took the best materials both for the inside and the outside. Outside architecture is of neoclassique style, somewhat similar to the one used on the Bund, however the inside was heavily influenced by Art Deco, the upcoming artistic movement of the time. Although the building has been modified to accommodate the hotel, a large part of the hotel was very well renovated. This post is focused on displaying old pictures of the interior of the Cercle Sportif Francais. Click on the picture to see an increased version.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/07a5ea5ca14e01f39501/Francis_main.jpg",
      architectural_style: "Modern Style",
      metro_stop: "South Shanxi Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/ffee390660e9456a9711/Francis_1.jpg","http://lc-lyUmBNQE.cn-n1.lcfile.com/adbf373c7b1250ad6938/Francis_2.jpg"]
      },
  {   name: "Grosvenor House",
      architects: "Palmer & Turner",
      year: "1935",
      neighborhood: "Xuhui",
      address: "65-125 Maoming Nan Lu/Rue Cardinal Mercier",
      description: "The current Jinjiang Hotel was converted from three buildings: the 13-storey Cathay Mansion apartment building completed in 1929, the 18-storey Grosvenor House apartment building completed in 1934, and a three-storey side wing of Grosvenor House. Both buildings were owned by Victor Sassoon's E.D. Sassoon and Company Limited. By the time the Communist Party of China liberated Shanghai in 1949, many of the residents had fled the city. According to records, by the end of 1949, of Grosvenor House's 77 apartments, only 12 were inhabited: 10 by foreigner households, and two Chinese. The name 'Jinjiang' derives from a restaurant opened in 1935 by female entrepreneur Dong Zhujun elsewhere in Shanghai. In 1951, the new government took over Cathay Mansion and converted it into a hotel for senior party officials and international visitors. Dong's restaurant moved into Cathay Mansion, the hotel was named 'Jinjiang Hotel', and Dong became the hotel's first chairman.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/d9664b1aea1fe243de18/Grosvnor_main.jpg",
      architectural_style: "Western Style",
      metro_stop: "Middle Huahai Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/b33b7abbe6d9963fa2b4/Gros_1.jpg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/9180aa27b8d540ffb3f9/Gros_main.jpeg"]
      },
  {   name: "Majestic Theatre",
      architects: "Robert Fan (范文照)",
      year: "1941",
      neighborhood: "Luwan",
      address: "66 Jiangning Road",
      description: "The historic art deco Theatre was built in 1941 and is one of Shanghai's oldest and most ornate theatres. It has a capacity of 1640 seats. Opera in Chinese is occasionally performed by local and touring groups, and the theatre is worth attending just for the traditional atmosphere.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/4b31d2b3be4f65cfbdb6/Majestic_main.jpg",
      architectural_style: "Modern Style",
      metro_stop: "West Nanjing Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/3dedcd8924fed300ff0b/Majestic_1.jpg","http://lc-lyUmBNQE.cn-n1.lcfile.com/4431c83e0c80f0c94bde/Majestic_2.jpg","http://lc-lyUmBNQE.cn-n1.lcfile.com/3204f2f602f5a98cbedb/Majestic_3.jpg"]
      },
  {   name: "Lincoln Apartments",
      architects: "Alexandre Leonard",
      year: "1930",
      neighborhood: "Xuhui",
      address: "1554-1568 Huaihai Zhong Lu/Avenue Joffre",
      description: "High Art Deco detailing in the exterior and the zigzag ironwork staircase railings makes this a classic. As does all the gossip about the Shanghai politician and his Peking Opera actress mistress who had an ill-fated love nest there in the 1940s…",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/f54e5a29634fd9870f7e/Lincoln_main.jpg",
      architectural_style:"Modern Style",
      metro_stop:"Changshou Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/e953ee22eebb5330b2bf/Lincoln_1.jpeg"]
      },
  {   name: "Paramount Ballroom",
      architects: "S.C. Young (Yang Ximiao)",
      year: "1931-34",
      neighborhood: "Jingan",
      address: "218 Yuyuan Lu/Yu Yuen Road",
      description: "This art deco theatre was once the biggest nightclub in the 1930s. The first Chinese jazz band, Jimmy King, played here, and both the former ruler of northeastern China General Zhang Xueliang and silent film legend Charlie Chaplin have danced in this very room. Its refurbished, impressive grand hall was reopened in 2017.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/e8b7ab0363dc2fde086c/Paramount_main.jpg",
      architectural_style: "Modern Style",
      metro_stop: "Jingan Temple",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/09d578cf3d25c75d0838/Paramount_Ballroom_1.jpg"]
      }
]

puts "Creating buildings"

buildings_data.each do |data|
  building = Building.create!(data)
  p "#{building.name} is created"
end

puts "#{Building.count} buildings are created"

puts "destroying users..."
User.destroy_all

users_data = [
  { wechat_name: "Curious Carrie",
    avatar: "http://lc-lyumbnqe.cn-n1.lcfile.com/69ac71b4355356809ad6/curiocity_wechat_logo.png",
    open_id: "code",
    email: "123@abc.cn",
    language: "engrish",
    gender: "2",
    level: "super",
    description: "banana fo fanana"
    },

  { wechat_name: "Moo-Moo-Poo-Poo",
    avatar: "http://lc-lyumbnqe.cn-n1.lcfile.com/69ac71b4355356809ad6/curiocity_wechat_logo.png",
    open_id: "code",
    email: "456@abc.cn",
    language: "engrish",
    gender: "1",
    level: "lower",
    description: "banana fo fanana"
    }
]

puts "Creating users"

users_data.each do |data|
  user = User.create!(data)
  p "#{user.wechat_name} is created"
end

puts "#{User.count} users are created"

route1 = Route.create!(name: "Wulumuqi Moo-moo Lu")
route2 = Route.create!(name: "Julu Lululu Circle")


puts "test route created"

checkpoint1 = Checkpoint.create!(route_id: route1.id, building_id: 1)
checkpoint2 = Checkpoint.create!(route_id: route1.id, building_id: 2)
checkpoint3 = Checkpoint.create!(route_id: route1.id, building_id: 3)

checkpoint4 = Checkpoint.create!(route_id: route2.id, building_id: 4)
checkpoint5 = Checkpoint.create!(route_id: route2.id, building_id: 5)
checkpoint6 = Checkpoint.create!(route_id: route2.id, building_id: 3)

puts "test checkpoint was created"

# t.string "name"   #  t.string "year"
#  t.string "architects"
#  t.string "neighborhood"
#  t.string "metro_stop"
#  t.string "main_picture"
#  t.text "photo_slider", default: [], array: true
#  t.string "address"
#  t.float "latitude"
#  t.float "longitude"
#  t.string "architectural_style"
#  t.string "contributor_author"
#  t.text "description"
#  t.string "fun_facts"
#  t.string "main_photo_credit"
#  t.bigint "user_id"
#  t.string "city"
#  t.boolean "fact_checked"
#  t.string "district"
#  t.string "favoritable_total"
#  t.string "favoritable_score"
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#  t.index ["user_id"], name: "index_buildings_on_user_id"


# t.string "name"   #  t.string "year"
#  t.string "architects"
#  t.string "neighborhood"
#  t.string "metro_stop"
#  t.string "main_picture"
#  t.text "photo_slider", default: [], array: true
#  t.string "address"
#  t.float "latitude"
#  t.float "longitude"
#  t.string "architectural_style"
#  t.string "contributor_author"
#  t.text "description"
#  t.string "fun_facts"
#  t.string "main_photo_credit"
#  t.bigint "user_id"
#  t.string "city"
#  t.boolean "fact_checked"
#  t.string "district"
#  t.string "favoritable_total"
#  t.string "favoritable_score"
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#  t.index ["user_id"], name: "index_buildings_on_user_id"
