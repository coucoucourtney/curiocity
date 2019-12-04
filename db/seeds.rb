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
  {   name: "Avenue Apartments",
      architects: "László Hudec",
      year: "1937",
      neighborhood: "International Settlement",
      address: "1341-1383 Beijing Xi Lu/Avenue Road",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Avenue-front.jpg"
      },
  {   name: "Bank of Canton",
      architects: "Poy Gum Lee",
      year: "1933",
      neighborhood: "Bund",
      address: "52 Ningbo Lu & 355 Jiangxi Lu/Ningpo Road & Kiangse Road",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/01/Ziggurat-Tuesday-Bank-of-Canton.jpg"
      },
  {   name: "Bank of China",
      architects: "Luke Him Sau and Palmer & Turner",
      year: "1933",
      neighborhood: "Bund",
      address: "52 Ningbo Lu & 355 Jiangxi Lu/Ningpo Road & Kiangse Road",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/01/Bank-of-China-2015.jpg"
      },
  {   name: "Cercle Sportif Francais",
      architects: "Leonard, Veysseyre & Kruze",
      year: "1929",
      neighborhood: "French Concession",
      address: "58 Maoming Nan Lu/Rue Cardinal Mercier",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2015/01/French-Club-stained-glass-750.jpg"
      },
  {   name: "Grosvenor House",
      architects: "Palmer & Turner",
      year: "1935",
      neighborhood: "French Concession",
      address: "65-125 Maoming Nan Lu/Rue Cardinal Mercier",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Grosvnor-wings-150x150.jpg"
      },
  {   name: "Majestic Theatre",
      architects: "Robert Fan (范文照)",
      year: "1941",
      neighborhood: " International Settlement",
      address: "66 Jiangning Lu",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Majestic.jpg"
      },
  {   name: "Midget",
      architects: "Alexandre Leonard",
      year: "1931",
      neighborhood: "French Concession",
      address: "115 Wukang Lu/Rte Ferguson",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Midget.jpg"
      },
  {   name: "Paramount Ballroom",
      architects: "Alexandre Leonard",
      year: "1931",
      neighborhood: "French Concession",
      address: "115 Wukang Lu/Rte Ferguson",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Paramount-150x150.jpg"
      },
  {   name: "New Asia Hotel",
      architects: "Poy Gum Lee / Republic Land Investment Co.",
      year: "1932-34",
      neighborhood: "Hongkou",
      address: "422 Tiantong Lu",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/New-Asia-150x150.jpg"
      },
  {   name: "Paradise Cinema",
      architects: "Robert Fan",
      year: "1932",
      neighborhood: "Hongkou",
      address: "267 Jiaxing Lu",
      description: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
      main_picture: "http://www.shanghaiartdeco.net/wp-content/uploads/2016/02/Paradise-Cinema-150x150.jpg"
      },
]


puts "Creating buildings"

buildings_data.each do |data|
  building = Building.create!(data)
  print "#{building.name} is created"
end

puts "#{Building.count} buildings are created"
