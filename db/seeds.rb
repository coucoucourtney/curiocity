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

puts "destroying users..."
User.destroy_all


buildings_data = [
# ------------index 0 - Amyron --------------------
  {   name: "Amyron Apartments",
      architects: "Leonard, Veysseyre & Kruze",
      year: "1941",
      district: "徐汇 （Xuhui）",
      address: "高安路14号 （14 Gao'an Rd)",
      neighborhood: "Former French Concession",
      latitude: "31.20535",
      longitude: "121.4444",
      description: "French architect Alexandre Leonard’s love poem to his Russian wife, Anna Leontiev – they lived in the two-storey penthouse and their initials are in the entrance lobby terrazzo. Maritime Art Deco, from the balconies to the ship’s railing staircase. In 1942, Leonard was stripped of his nationality, his name and his property by the Vichy government because of his “mixed marriage” to Anna. (She had herself lost her Polish nationality in 1939 thanks to the German Soviet pact, and was now Russian.) On March 1 1946, just two days after the French government had ceded the Concession back to China, a note appeared on the door of the Amyron, ordering the eviction of the “Bowshis [Anna’s surname] Spouse” who, they claimed, had been living there as a squatter since 1942. 25 days later, the consul general of France and other officials gathered at the French Consulate for the reading of Alexandre Leonard’s will — there was just one teensy problem: there was no death certificate and no evidence of his death. （Shanghai Art Deco)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/43c768d2b848a0e943e7/Amyron_Apartments_main.jpeg",
      architectural_style: "Art Deco",
      metro_stop: "衡山路 (Hengshan Rd)",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/43c768d2b848a0e943e7/Amyron_Apartments_main.jpeg","http://lc-lyUmBNQE.cn-n1.lcfile.com/096dd043f03600dcf917/amyron_2.jpg"],
      old_address: "Rte Cohen",
      city: "上海"
      },
# ------------index 1 - Rong Mansion --------------------

  {   name: "Rong Mansion",
      architects: "Leonard, Veysseyre & Kruze",
      year: "1939",
      district: "徐汇 （Xuhui）",
      address: "高安路18弄20号 （Bdg 20, Lane 18, Gao'an Rd)",
      neighborhood: "Former French Concession",
      latitude: "31.20427",
      longitude: "121.444919",
      description: "Another Maritime Art Deco beauty, with cruise ship lines, the house was built for Shanghai’s fabulously wealthy “Textile King” – and later ‘red capitalist – Rong Desheng. All of Shanghai was abuzz with talk of his kidnapping, from the gates of this house, in 1946. the former “Textile King’s” home is now a Children’s Palace – a place for after-school activities. If you look closely at the columns in front of the building, you can make out “Long Live Chairman Mao”, painted during the Cultural Revolution. (But the family cooperated with the new Communist government in 1949, and didn’t do too badly. Son Rong Yiren held high positions in the party and when it came time to open up China, helped found China Investment Trust Corporation-CITIC Group. Rong Yiren died in 2005, with a 1.6 billion fortune). (Shanghai Art Deco)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/8aa87198f762a0a12651/Rong_Mansion_main.png",
      architectural_style: "Art Deco",
      metro_stop:"衡山路 (Hengshan Rd)",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/f7fff6d487db8fa87f10/Rong-Mansion_1.jpg"],
      old_address: "Rte Cohen",
      city: "上海"

      },
# ------------index 2 - Midget --------------------
  {   name: "Midget Apartments",
      architects: "Leonard, Veysseyre & Kruze",
      year: "1931",
      district: "徐汇 （Xuhui）",
      address: "武康路115号 （115 Wukang Rd)",
      neighborhood: "Former French Concession",
      latitude: "31.208453179",
      longitude: "121.44056709",
      description: "AMidget Apartments on Wukang Road in Shanghai date from 1931. They have been altered since then. The balconies on each side have been enclosed and a new door has been punched through the corner to serve the business located on the ground floor but these decorative panels have survived. (Art Deco Buildings)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/e21a4a4a0e83c49788a7/The%20Midget%20Apartments%20-m.jpg",
      architectural_style: "Art Deco",
      metro_stop:"上海图书馆 (Shanghai Library)",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/230fd1cd26ff57f10785/The%20Midget%20Apartments%20%20s3.JPG", "http://lc-lyUmBNQE.cn-n1.lcfile.com/78edbbecc0413d04458f/The%20Midget%20Apartments%20%20s2.jpg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/e4961459172f7db31d9b/The%20Midget%20Apartments%20%20s1.jpg"],
      old_address: "Rte Ferguson",
      city: "上海"
      },
# ------------index 3 - Bank of China --------------------
  {   name: "Bank of China",
      architects: "Luke Him Sau and Palmer & Turner",
      neighborhood: "International Settlement",
      year: "1936",
      district: "黄埔 （Huangpu）",
      address: "山东一路23号 (The Bund no. 23)",
      # address changed from ningbo and jiangxi lu --- to the bund are the coordinates ok?
      latitude: "31.23965",
      longitude: "121.48583",
      description: "The Bank of China Building is a tower located at No. 23 on the Bund, in Shanghai, People's Republic of China. Previously the headquarters of the Bank of China, it now houses the Shanghai Branch of the Bank of China. It was built on the site of the old German Club (c. 1907). It housed the headquarters of the Bank of China. The stunted appearance of the building is attributed to Victor Sassoon's insistence that no other building on the Bund could rise higher than his. No. 23, the Bund was previously the German Club. During World War I, the Chinese government declared war on Germany, and confiscated the German Club as enemy assets. At the end of World War I, the Bank of China purchased the property from the government for 630,000 silver yuan. In 1928, the Bank of China moved its headquarters from Beijing to Shanghai. The Bank of China purchased land in Jinkee Road (now Dianchi Road) and Yuenmingyuen Road (now Yuanmingyuan Road) in 1930 to house its headquarters. From then on, the Shanghai branch would each year set aside RMB 500,000 from its surplus, as the construction fund for a new headquarters building. In April 1934, the board of directors decided to construct an 18-floor building, for the office administration and operation of the Head Office and the Shanghai Branch, on the former German Club site. The estimated basic construction cost was 6 million silver yuan. A primary reason why the bank officials want to have the building in the Bund concession was according to Zhang Jia and Wang Ao, the then presidents of the Bank of China states because 'Bank of China had endured hardship and thrived. Since its infrastructure had been reformed and it was strong enough to compete with those European and American banks on the Bund, it needed a new building, which could symbolize modernity, soundness and international credit.' In the original design, this building had 34 floors and would be the highest in the Far East. Actually, the current foundation was still strong enough for a 34-floor building. However, Victor Sassoon insisted that 'any house built next to my building is not allowed to be higher than the spire of the Sassoon House'. The Municipal Council of the British concession refused to issue the construction permit with an excuse of 'Chinese were poor in designing ability and the 34-story building would do harm to the foundations of the surrounding buildings'. Finally, the Bank of China building was cut nearly half, with a top height 1 foot lower than the nearby Sassoon House.[1] In September 1934, Bank of China established a special Management Council to deal with the construction of the building, chaired by Mr. Tsuyee Pei, Head Office's Overseas Department manager and Shanghai Branch manager. Tsuyee Pei was the father of architect I. M. Pei, who would later design the Bank of China Tower, Hong Kong. The design drafts were jointly prepared by a famous Shanghai design firm Palmer & Turner and Mr. Lu Qianshou (also: Luke Him Sau 1904 - 1991[2]), the Chief Architect of the Bank of China. Dao Kee Construction Co., Ltd, a local firm, won the bid by proposing a budget of RMB 1.813 million for the 18-month project. In 1935, the government of the Republic of China started restructuring the Central Bank, Bank of China and Bank of Communications. Bank of China, whose stocks were 80 percent publicly owned, became the target of plunder by various powers. It was forced to add RMB 15 million government stocks, making its total capital RMB 40 million, half public and half government owned. With this, the control fell into the hands of the government and T. V. Soong became chairman of Bank of China. On October 10, 1936, T. V. Soong presided over the foundation-laying ceremony of the Bank of China Tower at No. 23 on the Bund. On the day, the Shanghai Times carried a detailed report on the event. The original text reads: Bank of China to construct a building at Renji Road of the Bund. Our newspaper will keep you updated about its status. We are informed that the bank will hold a foundation-laying ceremony on 10:00 am today (Double Ten Festival). The presence of local financial professionals is appreciated. The building was topped out in 1937. Right then, the War of Resistance against Japan broke out, which postponed the completion. In 1941, it served as the office of the reserve bank of Wang Jingwei's illegitimate government; it had been turned over to the Central Bank after the victory against the Japanese. After several rounds of negotiations, Bank of China didn't move to that building till the New Year of 1946, ten years from the time it was built. The Bank of China Tower occupies a gross floor area of 50,000 square meters (540,000 sq ft), consisting of two buildings. The east building is the main structure with 15 floors facing the Bund. The ground floor has a higher ceiling, plus two floors underground, making a total of 17 floors. The west building is an annex on four floors. The overall outlook carries a traditional Chinese style, clad in smooth Jinshan stones. Its top is a pyramid with a square base. Parts of the brackets are decorated with stone door arches. A cut-out of the Chinese character for 'longevity' can be spotted on both sides of each floor, imparting a calm and peaceful air to the grand construction. Traditional decorations are also adopted for the flower patterns and panes on the railing. In Shanghai's international concessions, the erection of the Bank of China Tower among numerous foreign buildings, a building funded by the bank and constructed by Chinese workers and combining the Chinese and Western architectural styles, has broken the foreign dominance of Shanghai's grand buildings. In other words, it has again demonstrated Bank of China's determination to compete with western banks in China. （Wikipedia)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/ae16569351535a510397/BOC_main.jpg",
      architectural_style: "Neoclassical",
      metro_stop: "南京东路 (East Nanjing Rd)",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/3e77a4f98e9daa861d39/BOC_1.jpeg","http://lc-lyUmBNQE.cn-n1.lcfile.com/ffd228a9e0ae4557a917/BOC_2.jpg"],
      old_address: "The Bund",
      city: "上海"
      },
# -------------------index 4 - Lincoln ------------------
  {   name: "Lincoln Apartments",
      architects: "Leonard, Veysseyre & Kruze",
      year: "1930",
      district: "徐汇 (Xuhui)",
      address: "淮海中路1554-1568号 （1554-1568 Middle Huaihai Rd）",
      old_address: "Ave Joffre",
      neighborhood: "Former French Concession",
      latitude: "31.2088",
      longitude: "121.44533",
      description: "High Art Deco detailing in the exterior and the zigzag ironwork staircase railings makes this a classic. As does all the gossip about the Shanghai politician and his Peking Opera actress mistress who had an ill-fated love nest there in the 1940s. (Shanghai Art Deco)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/f54e5a29634fd9870f7e/Lincoln_main.jpg",
      architectural_style:"Art Deco",
      metro_stop: "上海图书馆 (Shanghai Library)",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/e953ee22eebb5330b2bf/Lincoln_1.jpeg"],
      city: "上海"
      },
# --------------------index 5 - Cercle Sportif Francais -------------

  {   name: "Cercle Sportif Francais",
      architects: "Leonard & Veysseyre",
      year: "1929",
      district: "徐汇（Xuhui)",
      address: "茂名南路58号 (58 Maoming Nan Rd)",
      neighborhood: "Former French Concession",
      latitude: "31.21981",
      longitude: "121.45991",
      description: "he Cercle Sportif Francais on Route Cardinal Mercier (today the Okura Garden hotel) was the center of life for the cream of the French Concession. Built by the French architect firm Vesseyre & Leonard it opened in 1926 was certainly the largest design of the firm in Shanghai. In a effort to compete with Britain it was partly paid by French state money in order to project French colonial power in the city. The Cercle Sportif moved in the new building from what later became the College Municipal Francais. Construction took the best materials both for the inside and the outside. Outside architecture is of neoclassique style, somewhat similar to the one used on the Bund, however the inside was heavily influenced by Art Deco, the upcoming artistic movement of the time. Although the building has been modified to accommodate the hotel, a large part of the hotel was very well renovated.

      As opposed to the current hotel entrance at the front of the building, the CFS entrance was on the side of the building, on what is now Maoming Lu (the current hotel entrance was one of the restaurants). The original entrance has been delicately renovated by the Japanese owner and comparison of the old and the new is striking for their similarities.

 One of the patterns that can be found all over the interior of the building in a typical Art Deco fashion is the little fan shape, present here in the corners of squares on the sides of the doors.

[The card room] is located on the upper floor of the building and now used as a meeting room. The wonderful Art Deco frescoes have disappeared a long time ago as well as the original wood floor and furniture, but the lighting and door frames are still in the same stye (though probably not the originals). The general feel of the room has not changed, neither has the great view of the garden that is not seen here but can be guessed from the light flowing through the picture.

[The swimming pool] was supposed to be the best in Shanghai, 54m long. The hotel today has a swimming pool, but the one on the picture was destroyed during renovation.. (Shanghailander)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/07a5ea5ca14e01f39501/Francis_main.jpg",
      architectural_style: "French Renaissance, Neoclassical, Art Deco",
      metro_stop: "陕西南路 (South Shaanxi Rd)",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/ffee390660e9456a9711/Francis_1.jpg","http://lc-lyUmBNQE.cn-n1.lcfile.com/adbf373c7b1250ad6938/Francis_2.jpg"],
      old_address: "Rue Cardinal Mercier",
      city: "上海"
      },
  # -------------index 6 - Grosvenor --------------------------------------
  {   name: "Grosvenor House",
      architects: "Palmer & Turner",
      year: "1935",
      district: "徐汇（Xuhui)",
      address: "茂名南路65-125号 (65-125 South Maoming Rd)",
      neighborhood: "Former French Concession",
      latitude: "31.21688",
      longitude: "121.46131",
      description: "The current Jinjiang Hotel was converted from three buildings: the 13-storey Cathay Mansion apartment building completed in 1929, the 18-storey Grosvenor House apartment building completed in 1934, and a three-storey side wing of Grosvenor House. Both buildings were owned by Victor Sassoon's E.D. Sassoon and Company Limited. By the time the Communist Party of China liberated Shanghai in 1949, many of the residents had fled the city. According to records, by the end of 1949, of Grosvenor House's 77 apartments, only 12 were inhabited: 10 by foreigner households, and two Chinese. The name 'Jinjiang' derives from a restaurant opened in 1935 by female entrepreneur Dong Zhujun elsewhere in Shanghai. In 1951, the new government took over Cathay Mansion and converted it into a hotel for senior party officials and international visitors. Dong's restaurant moved into Cathay Mansion, the hotel was named 'Jinjiang Hotel', and Dong became the hotel's first chairman. (Shanghai Art Deco)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/d9664b1aea1fe243de18/Grosvnor_main.jpg",
      architectural_style: "Art Deco",
      metro_stop: "淮海中路 (Middle Huahai Rd)",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/b33b7abbe6d9963fa2b4/Gros_1.jpg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/9180aa27b8d540ffb3f9/Gros_main.jpeg"],
      old_address: "Rue Cardinal Mercier",
      city: "上海"
      },
#  ---------------index 7 - Majestic --------------------------------------------------------------
  {   name: "Majestic Theatre",
      architects: "Robert Fan (范文照)",
      year: "1941",
      district: "静安 （Jingan）",
      address: "江宁路66号 (66 Jiangning Rd)",
      neighborhood: "International Settlement",
      latitude: "31.22978",
      longitude: "121.456687",
      description: "The historic art deco Theatre was built in 1941 and is one of Shanghai's oldest and most ornate theatres. It has a capacity of 1640 seats. Opera in Chinese is occasionally performed by local and touring groups, and the theatre is worth attending just for the traditional atmosphere.(Shanghai Art Deco)",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/4b31d2b3be4f65cfbdb6/Majestic_main.jpg",
      architectural_style: "Art Deco",
      metro_stop: "West Nanjing Road",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/3dedcd8924fed300ff0b/Majestic_1.jpg","http://lc-lyUmBNQE.cn-n1.lcfile.com/4431c83e0c80f0c94bde/Majestic_2.jpg","http://lc-lyUmBNQE.cn-n1.lcfile.com/3204f2f602f5a98cbedb/Majestic_3.jpg"],
      old_address: "",
      city: "上海"
      },
# ---------------index 8  - Paramount --------------------------------------------------------
  {   name: "Paramount Ballroom",
      architects: "S.C. Young (Yang Ximiao)",
      year: "1931-34",
      district: "静安 (Jingan)",
      address: "愚园路218号 (218 Yuyuan Lu)",
      neighborhood: "",
      latitude: "31.22358",
      longitude: "121.44427",
      description: "This art deco theatre was once the biggest nightclub in the 1930s. The first Chinese jazz band, Jimmy King, played here, and both the former ruler of northeastern China General Zhang Xueliang and silent film legend Charlie Chaplin have danced in this very room. Its refurbished, impressive grand hall was reopened in 2017.",
      main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/e8b7ab0363dc2fde086c/Paramount_main.jpg",
      architectural_style: "Modern Style",
      metro_stop: "静安寺 （Jingan Temple）",
      photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/09d578cf3d25c75d0838/Paramount_Ballroom_1.jpg"],
      old_address: "Yu Yuen Road",
      city: "上海"
      },
# ------------index 9 -  Asia Building 1 ==========================
  {
    name: "Asia Building",
    architects: "",
    year: "1916",
    neighborhood: "International Settlement",
    metro_stop: "南京东路 (East Nanjing Rd)",
    address: "中山东一路1号 (The Bund no. 1)",
    architectural_style: "Modern & Baroque",
    description: "The building was built in 1916 as McBain Building on the corner of the Bund (currently 1 East-1 Zhongshan Road) and Avenue Edward VII (today's East Yan'an Road), a location known as No.1 on the Bund, near the former French Concession. It stands on a site of 1739 square metres and has a floor area of 11,723 square metres. It was the tallest and one of the largest buildings in Shanghai upon its completion. This fact, adding to its precious location earned it a widespread nickname 'Number One Building on the Bund' (外滩第一楼). The building was designed by Moorhead＆Halse, a famous architectural firm in Shanghai back then and built by contractor Yu Chang Tai. Initially the building was seven stories tall, an extra storey was added atop in 1939. The lot of the building originally belonged two British brothers James and Hayes Hogg, whose trading company Hogg Brothers opened in Shanghai in 1861. In 1899 the brothers decided to close their business in Shanghai and return to Britain. They sold the property to British merchant George McBain, whose company constructed this current building after demolishing an original house on the site. In 1917, one year after its completion the Royal Dutch Shell's Asiatic Petroleum division, which sold kerosene and candles used for lighting before electric lights were invented, bought in much of the building and renamed it the Asia Building. During the Japanese occupation of Shanghai the building was taken over by the Japanese and most of the staff, mainly British, fled Shanghai and relocated in Chongqing. The majority of them returned to Shanghai and continued working in the building after the occupation while the company's profits soared to unprecedented levels. After the People's Republic of China was established, some branches of the company in China closed down, only some 50 employees remained in Shanghai. The East China Petroleum Company took control of the building in 1950. A number of other occupants including the Shanghai Metallurgical Designing & Research Institute, Shanghai housing & land administration bureau and Shanghai Silk Company moved in 1959. The Asiatic Petroleum division of Royal Dutch Shell finally ceased operation in the building in 1966, after which the Shanghai Real Estate Department took the building's control. Two shell-shaped ornaments of the Royal Dutch were removed from a column of the building's façade and relocated to its Beijing Yuanmingyuan office when the company left, now being displayed at the Shanghai History Museum. The building became the headquarters of the China Pacific Insurance Company in 1996 but as of today the building is largely empty. (Wikipedia) ",
    city: "上海",
    district: "黄埔 (Huangpu)",
    longitude:"121.49139",
    latitude: "31.23361",
    old_address: "The Bund",
    main_picture: "http://lc-lyumbnqe.cn-n1.lcfile.com/01c605b5d6d115af9060/Asia%20Building_m.jpg",
    photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/9a0c3317e08f3c52f442/Asia%20Building_1.jpg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/61c2300eb384975f7ce7/Asia%20Building_2.jpg"],
  },

# ---- index  - East Wind Hotel 2 =======================
# {
#   name: "East Wind Hotel",
#   architects: "H. Tarrant",
#   year: "1910",
#   neighborhood: "International Settlement",
#   metro_stop: "南京东路 (East Nanjing Rd)",
#   address: "中山东一路2号 (The Bund no. 2)",
#   architectural_style: "Baroque Revival",
#   description: "The Shanghai Club Building is a six-storey Baroque Revival building in Shanghai located at No.2, The Bund. Once home to one of the premier men's clubs in Shanghai, the building was used for various clubs and hotels after 1949. It is currently part of the Waldorf Astoria Shanghai on the Bund. The current building was opened in January 1910. The total building footprint is 1,811 square metres, while total floor area is 9,280 square metres. The building's main facade uses a tripartite design, the middle section featuring six Ionic columns. The roof section of the facade has two symmetrical Baroque-style cupolas, with intricate carved details. The architect was H. Tarrant. Interior design was by Japanese architect Shimoda Kikutaro (Japanese: 下田菊太郎). The most famous feature of the interior is the 34-metre black-and-white marble bar, called 'the long bar'. Shanghai Club was the principal men's club for British residents of Shanghai, which was founded in 1861. The club was originally named 'The Correspondent's Club'. In 1864, a club building was erected on this site, a three-storey red-brick building. United States President Ulysses S. Grant was hosted there when he visited Shanghai in 1879. In 1905, the Club decided to rebuild its club building.[1] In 1909, the old building was torn down and replaced with a new, six-storey building, with a reinforced concrete structure in a Baroque Revival design. The new building opened in January 1910. In its heyday in the 1920s and 1930s, the Club was the most exclusive club in Shanghai. The second-floor was famous for the 'Long Bar.' This was an unpolished mahogany, L-shaped bar that measured 110.7 feet by 39 feet. It was famous for being the worlds longest bar at one time. Noël Coward said, laying his cheek on it, that he could see the curvature of the earth. There were also forty guest rooms on the second and third floors. Membership was restricted to white males of a certain class. Even the famous 34-metre Long Bar on the second floor was subject to a strict hierarchy: the prime Bund-facing end of the L-shaped mahogany bar was the territory of the tai-pans and bank managers, with the social scale falling as one moved down the length of the bar. A massive Italianate Grand Hall was located on the first floor, with ceilings over 12 feet high, supported by enormous Ionic columns. The hall ended in a curving marble staircase, where twin elevators whisked members to the upper floors. Here, there were all the requisites of a proper gentleman’s club: a smoking room and a library – reported to hold more volumes than the Shanghai Public Library – a billiards room, a dining room and guest rooms on the top two floors for resident members. On the outbreak of war in the Pacific in 1941, the Shanghai Club was closed and occupied by the Japanese occupation force until the end of the war. In 1949, the building was expropriated by the new Communist government of Shanghai, and it was converted into the International Seamen Club, catering to foreign sailors. In 1971, it became the Dongfeng Hotel, and it was notable from 1990 to 1996 for hosting the first KFC restaurant in Shanghai. From 1996 the building sat derelict, until it was leased by the Hilton group in 2009 and converted to become the Waldorf Astoria Shanghai on the Bund, a luxury hotel. The new hotel opened in 2011. (Wikipedia)",
#     main_photo_credit: "",
#     city: "上海",
#     district: "黄埔 (Huangpu)",
#     longitude: "",
#     latitude: "",
#     old_address: "The Bund",
#     main_picture: "",
#     photo_slider: [],
# },
# -------- Bund 3 ===============================
{
name: "Union Building",
architects: "Palmer & Turner",
year: "1916",
neighborhood: "International Settlement",
metro_stop: "南京东路 (East Nanjing Rd)",
address: "中山东一路3号 (The Bund no. 3)",
architectural_style: "Neo-renaissance & Baroque",
description: "The Union Building is a building on the Bund in Shanghai, China. It is located at No. 3, the Bund (formerly no. 4). Completed in 1916, the building was used by a number of insurance companies. The six-storey building was the first work in Shanghai of P&T Architects and Surveyors (Palmer & Turner), and was the first building in Shanghai to use a steel structure. The building occupied 2241 square metres, with a floor area of 13760 square metres. Because it had a narrow frontage onto the Bund, the main door was located on the adjacent Guangdong Road. The building is in Neo-Renaissance style with a symmetrical facade, but with some Baroque style details. The roof features a domed corner pavilion. In 1937, the Japanese Imperial Army threatened Shanghai. Being unable to indemnify war damages, the insurance companies had their assets frozen. The Union Bank then purchased the building. In 1949 the Union Bank evacuated from Shanghai in the wake of the Communist takeover. From 1953 the building was used by the Shanghai Civil Architecture and Design Institute. In 1997 a private equity fund from Singapore purchased the building, and in 2004 converted it to a shopping centre, called 'Three on the Bund'. The restoration was led by American architect Michael Graves who meticulously restored the Beaux-Arts facade, reinforced the structure, and installed new building systems. He hailed his efforts as a model of adaptive reuse and won the 2006 design in Asia award. (Wikipedia)",
main_photo_credit: "",
city: "上海",
district: "黄埔 (Huangpu)",
longitude:"121.49076",
latitude:"31.23417",
old_address: "The Bund",
main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/8de2f194cc53c66f4bce/Bund%20No.3_m.jpeg",
photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/b7afbbfcdfacabf1be50/Bund%20No.3_2.jpeg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/682178b167405adbfd58/Bund%20No.3_1.jpeg"],
},
# ===================Bund 6==================
{
  name: "Bund No. 6",
  architects: "",
  neighborhood: "International Settlement",
  metro_stop: "南京东路 (East Nanjing Rd)",
  address: "中山东一路6号 (The Bund no. 6)",
  architectural_style: "Victorian Gothic'",
  description: "China Merchants Bank Building, or Commercial Bank of China Building, acknowledged as one of the oldest buildings on the Bund, is generally documented as being built in 1897 as premises for either the Imperial Bank of China or the Commercial Bank of China. The building itself was completed many years earlier than is generally realized as the new premises for Russell & Co., one of the most illustrious American companies to operate in China in the 19th century. It is the location of the International Enterprise Co., Ltd. Hong Kong Parkview now. It is a false four-story Gothic-style building. There are five fastigiated layers in the fourth floor while small steeples can be found on both the third and fourth floor. The windows in the first and second floor are typical Gothic style flower lattice. Today, the upper three floors are devoted to fine cuisine and high living. (ChinaTravelGuide)",
  main_photo_credit: "",
  city: "上海",
  district: "黄埔 (Huangpu)",
  longitude:"121.49066",
  latitude:"31.23472",
  old_address: "The Bund",
  main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/6fa3d6d3fcdbdf18aa62/Bund%20No.%206_m.jpg",
  photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/1594a15ee08e5728e906/Bund%20No.%206_s1.jpg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/adac06f2733f51d2b6e2/Bund%20No.%206_s2.jpeg"]
},
# ==================== bund 7 ===================================
{
name: "The China Merchants Company Building",
architects: "",
year: "1901",
neighborhood: "International Settlement",
metro_stop: "南京东路 (East Nanjing Rd)",
address: "中山东一路9号 (The Bund no. 9)",
architectural_style: "Neoclassical",
description: "This building was constructed in 1901 by The China Merchants Steam Navigation Company which was run by the Qing Dynasty's Ministry of Trade. The government had purchased the bankrupt American Russell & Co. in the 1870s, and subsequently built this building on the site of their riverfront garden. The building stands as one of China's most symbolic and memorable examples of the nation's early modernization process. It appears fine and delicate, and is the Bund's unique remaining example of neoclassical external-corridor architecture of the late Victorian era. Furthermore, it is one of two examples of red-brick construction along the Bund's row of grey buildings (the other being the South Building of the Peace Hotel). The main three-story structure is made of brick, stone, timber and steel, enclosing a space of 1,460 square meters. The structure is divided into five bays and supported by eight steel columns and masonry peripheral walls. The original floors were of post-and-beam wooden construction. The external perspective reveals a three-tiered, Neo-Classical style with sloping roofs, with the Eastern Bund-facing external-corridor with Corinthian and Tuscan columns on the second and third floor, and a connecting structure off the south-western corner made entirely of brick and timber. The Eastern facade flanking wings have English Classical Renaissance-styled gables. Granite stone is primarily used in the Eastern facade for the base, as well as the Chinese traditional greenish slate for the eaves and roof. (ChinaTravelGuide)",
 main_photo_credit: "",
 city: "上海",
 district: "黄埔 (Huangpu)",
 longitude: "121.49073",
 latitude: "31.23549",
 old_address: "The Bund",
 main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/0f26b094daa023403256/The%20China%20Merchants%20Company%20Building%209_m.jpg",
 photo_slider: ["http://lc-lyUmBNQE.cn-n1.lcfile.com/5235f526e491ada034cb/The%20China%20Merchants%20Company%20Building%209_s2.jpg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/684c9b04c73f646e92bd/The%20China%20Merchants%20Company%20Building%209_s.jpg", "http://lc-lyUmBNQE.cn-n1.lcfile.com/a6a030bfe91c45ed551b/The%20China%20Merchants%20Company%20Building%209_s3.jpg"],
}

]

curiocity_user =
  { wechat_name: "The Curiocity Team",
    avatar: "http://lc-lyUmBNQE.cn-n1.lcfile.com/69ac71b4355356809ad6/curiocity_wechat_logo.png",
    open_id: "code",
    email: "123@abc.cn",
    language: "english",
    gender: "2",
    description: "We are the curiocity team!",
    user_type: "admin"

    }

puts "Creating users"


  user = User.create!(curiocity_user)
  p "#{user.wechat_name} is created with id #{user.id}"


puts "#{User.count} users are created"

curiocity_user = user

puts "Creating buildings"
building = []
buildings_data.each_with_index do |data, index|
  building[index] = Building.create!(data)
  p "#{building[index].name} is created"
  building[index].user_id = user.id
  building[index].save!
end

building_0 = building[0]
building_1 = building[1]
building_2 = building[2]
building_3 = building[3]
building_4 = building[4]
building_5 = building[5]
building_6 = building[6]
building_7 = building[7]
building_8 = building[8]
building_9 = building[9]
building_10 = building[10]
building_11 = building[11]
building_12 = building[12]
puts "#{Building.count} buildings are created"


routes_data = [
#  Art Deco - Shanghai (Midget, Lincoln, Amyron, Rong) ----------------------------
  {
    name: "Art Deco - FFC",
    main_picture: "http://lc-lyumbnqe.cn-n1.lcfile.com/6cbea325765a7a989024/Route1.jpg",
    description: "Stroll through the tree lined streets of the Former French Concession and discover some hidden architectural gems.",
    district: "Xuhui",
    approximate_duration: "60",
    approximate_distance: "3"
  },
#  Historical Bund -----------------------------------------------------------------
  {
    name: "Historical Huangpu",
    main_picture: "http://lc-lyUmBNQE.cn-n1.lcfile.com/57d95629e97231f9c8d6/Bund_walk_main.jpeg",
    description: " From the mid 1800's until WWII, the Bund was a vibrant center for British commerce and is still a destination for tourists and locals alike. With it's iconic view of Shanghai and riverside promenade, it separates historical Puxi on the West side of the river and the ultra modern Pudong on the East. The buildings on this walk along the Western side of the river include some major sites as well as some lesser known works.",
    district: "Huangpu",
    approximate_duration: "60",
    approximate_distance: "5"
  }
]

puts "Creating routes"

route = []
routes_data.each_with_index do |data, index|
  route[index] = Route.create!(data)
  p "#{route[index].name} is created"
end

route_0 = route[0]
route_1 = route[1]

puts "#{Route.count} routes are created"


puts "creating checkpoints"

checkpoint1 = Checkpoint.create!(route_id: route_0.id, building_id: building_2.id)
checkpoint2 = Checkpoint.create!(route_id: route_0.id, building_id: building_0.id)
checkpoint3 = Checkpoint.create!(route_id: route_0.id, building_id: building_1.id)
checkpoint4 = Checkpoint.create!(route_id: route_0.id, building_id: building_4.id)


checkpoint5 = Checkpoint.create!(route_id: route_1.id, building_id: building_9.id)
checkpoint6 = Checkpoint.create!(route_id: route_1.id, building_id: building_10.id)
checkpoint7 = Checkpoint.create!(route_id: route_1.id, building_id: building_11.id)
checkpoint8 = Checkpoint.create!(route_id: route_1.id, building_id: building_12.id)
checkpoint9 = Checkpoint.create!(route_id: route_1.id, building_id: building_3.id)



puts "test checkpoint was created"

# t.string "name"   #  t.string "year"
#  t.string "architects"
#  t.string "district"
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
#  t.string "district"
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
