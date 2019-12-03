# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying buildings..."
Building.destroy_all

buildings_data = [
  {   name: "The Amyron Apartments",
      architects: "Alexandre Leonard",
      year: "1941",
      neighborhood: "Xuhui",
      address: "14 Gao'an Lu /Rte Cohen",
      description: "French architect Alexandre Leonard’s love poem to his Russian wife, Anna Leontiev – they lived in the two-storey penthouse and their initials are in the entrance lobby terrazzo. Maritime Art Deco, from the balconies to the ship’s railing staircase.",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2015/07/Shanghai-Murders_Amyron-lobbybw-750.jpg",
      architectural_style:"Modern architecture",
      metro_stop:"Zhaojiabang Road",
      photo_slider: ["https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Amyron_Apartments.JPG/800px-Amyron_Apartments.JPG"]
      },
  {   name: "Rong Mansion",
      architects: "Alexandre Leonard",
      year: "1935",
      neighborhood: "Xuhui",
      address: "20, Lane 18, Gao An Road/Route Cohen",
      description: "Another Maritime Art Deco beauty, with cruise ship lines, the house was built for Shanghai’s fabulously wealthy “Textile King” – and later ‘red capitalist – Rong Desheng. All of Shanghai was abuzz with talk of his kidnapping, from the gates of this house, in 1946.",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2014/06/Rong-Mansion-150x150.jpg",
      architectural_style:"Western style",
      metro_stop:"Hengshang Road",
      photo_slider: ["https://archive.shine.cn/newsimage/2017/10/16/20171016000536.jpg"]
      },
  {   name: "Bank of China",
      architects: "Luke Him Sau and Palmer & Turner",
      year: "1933",
      neighborhood: "Huangpu",
      address: "52 Ningbo Lu & 355 Jiangxi Lu/Ningpo Road & Kiangse Road",
      description: "It was built on the site of the old German Club (c. 1907). It housed the headquarters of the Bank of China. The stunted appearance of the building is attributed to Victor Sassoon's insistence that no other building on the Bund could rise higher than his.",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/01/Bank-of-China-2015.jpg",
      architectural_style: "Western Style",
      metro_stop: "West Nanjing Road",
      photo_slider: ["https://upload.wikimedia.org/wikipedia/commons/d/d8/Peace_Hotel.JPG","https://www.lonelyplanet.com/travel-blog/tip-article/wordpress_uploads/2016/02/fairmont-peace-hotel-shanghai-juliana-loh.jpg"]
      },
  {   name: "Cercle Sportif Francais",
      architects: "Leonard, Veysseyre & Kruze",
      year: "1929",
      neighborhood: "Xuhui",
      address: "58 Maoming Nan Lu/Rue Cardinal Mercier",
      description: "The Cercle Sportif Francais on Route Cardinal Mercier (today the Okura Garden hotel) was the center of life for the cream of the Xuhui. Built by the French architect firm Vesseyre & Leonard it opened in 1926 was certainly the largest design of the firm in Shanghai. In a effort to compete with Britain it was partly paid by French state money in order to project French colonial power in the city. The Cercle Sportif moved in the new building from what later became the College Municipal Francais. Construction took the best materials both for the inside and the outside. Outside architecture is of neoclassique style, somewhat similar to the one used on the Bund, however the inside was heavily influenced by Art Deco, the upcoming artistic movement of the time. Although the building has been modified to accommodate the hotel, a large part of the hotel was very well renovated. This post is focused on displaying old pictures of the interior of the Cercle Sportif Francais. Click on the picture to see an increased version.",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2015/01/French-Club-stained-glass-750.jpg",
      architectural_style: "Modern Style",
      metro_stop: "South Shanxi Road",
      photo_slider: ["https://www.virtualshanghai.net/Asset/Preview/dbImage_ID-25279_No-1.jpeg","https://www.virtualshanghai.net/Asset/Preview/dbImage_ID-1169_No-1.jpeg","https://www.virtualshanghai.net/Asset/Preview/dbImage_ID-225_No-1.jpeg"]
      },
  {   name: "Grosvenor House",
      architects: "Palmer & Turner",
      year: "1935",
      neighborhood: "Xuhui",
      address: "65-125 Maoming Nan Lu/Rue Cardinal Mercier",
      description: "The current Jinjiang Hotel was converted from three buildings: the 13-storey Cathay Mansion apartment building completed in 1929, the 18-storey Grosvenor House apartment building completed in 1934, and a three-storey side wing of Grosvenor House. Both buildings were owned by Victor Sassoon's E.D. Sassoon and Company Limited. By the time the Communist Party of China liberated Shanghai in 1949, many of the residents had fled the city. According to records, by the end of 1949, of Grosvenor House's 77 apartments, only 12 were inhabited: 10 by foreigner households, and two Chinese.

The name 'Jinjiang' derives from a restaurant opened in 1935 by female entrepreneur Dong Zhujun elsewhere in Shanghai. In 1951, the new government took over Cathay Mansion and converted it into a hotel for senior party officials and international visitors. Dong's restaurant moved into Cathay Mansion, the hotel was named 'Jinjiang Hotel', and Dong became the hotel's first chairman.",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Grosvnor-wings.jpg",
      architectural_style: "Western Style",
      metro_stop: "Middle Huahai Road",
      photo_slider: ["https://en.wikipedia.org/wiki/File:Shanghai0612_Jinjiang2.JPG", "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/The_Times_They_Are_A-Changin%27.jpg/220px-The_Times_They_Are_A-Changin%27.jpg"]
      },
  {   name: "Majestic Theatre",
      architects: "Robert Fan (范文照)",
      year: "1941",
      neighborhood: "Luwan",
      address: "66 Jiangning Road",
      description: "The historic art deco Theatre was built in 1941 and is one of Shanghai's oldest and most ornate theatres. It has a capacity of 1640 seats. Opera in Chinese is occasionally performed by local and touring groups, and the theatre is worth attending just for the traditional atmosphere.",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Majestic.jpg",
      architectural_style: "Modern Style",
      metro_stop: "West Nanjing Road",
      photo_slider: ["http://shanghaistreetstories.com/wp-content/uploads/2011/08/IMG_2091a-1050x700.jpg","http://shanghaistreetstories.com/wp-content/uploads/2011/08/IMG_2101a-e1404324483598.jpg","http://shanghaistreetstories.com/wp-content/uploads/2011/08/Majestic-Theatre-Virtual-Shanghai-e1404325151498.jpg"]
      },
  {   name: "Lincoln Apartments",
      architects: "Alexandre Leonard",
      year: "1930",
      neighborhood: "Xuhui",
      address: "1554-1568 Huaihai Zhong Lu/Avenue Joffre",
      description: "High Art Deco detailing in the exterior and the zigzag ironwork staircase railings makes this a classic. As does all the gossip about the Shanghai politician and his Peking Opera actress mistress who had an ill-fated love nest there in the 1940s…",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/05/Lincoln-640.jpg",
      architectural_style:"Modern Style",
      metro_stop:"Changshou Road",
      photo_slider: ["https://upload.wikimedia.org/wikipedia/commons/9/92/Lincoln_Apartments_Shanghai.JPG"]
      },
  {   name: "Paramount Ballroom",
      architects: "S.C. Young (Yang Ximiao)",
      year: "1931-34",
      neighborhood: "Jingan",
      address: "218 Yuyuan Lu/Yu Yuen Road",
      description: "This art deco theatre was once the biggest nightclub in the 1930s. The first Chinese jazz band, Jimmy King, played here, and both the former ruler of northeastern China General Zhang Xueliang and silent film legend Charlie Chaplin have danced in this very room. Its refurbished, impressive grand hall was reopened in 2017.",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Paramount.jpg",
      architectural_style: "Modern Style",
      metro_stop: "Jingan Temple",
      photo_slider: ["https://archive.shine.cn/newsimage/2017/04/12/20170412003507.jpg"]
      }
]


puts "Creating buildings"

buildings_data.each do |data|
  building = Building.create!(data)
  print "#{building.name} is created"
end

puts "#{Building.count} buildings are created"

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
