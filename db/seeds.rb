# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

disney_items = [
  [ 1, 1, "Elsa", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581119?$thumb$" ],
  [ 2, 1, "White", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581114?$thumb$" ],
  [ 3, 1, "Anna", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581113?$thumb$" ],
  [ 4, 1, "Ariel", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581117?$thumb$" ],
  [ 5, 1, "Belle", "http://m.disneystore.com/disney-animators-collection-belle-doll-16/mp/1362450/1000259/" ],
  [ 6, 1, "Pocahontas", "http://m.disneystore.com/disney-animators-collection-pocahontas-doll-16/mp/1362452/1000259/" ],
  [ 7, 1, "Rapunzel", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581124?$thumb$" ],
  [ 8, 1, "Tinker", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040901128?$thumb$" ],
  [ 9, 1, "Aurora", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581115?$thumb$" ],
  [ 10, 1, "Merida", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581118?$thumb$" ],
  [ 11, 1, "Cinderella", "http://m.disneystore.com/disney-animators-collection-cinderella-doll-16/mp/1362440/1000259/" ],
  [ 12, 1, "Mulan", "http://m.disneystore.com/disney-animators-collection-mulan-doll-16/mp/1362446/1000259/" ],
  [ 13, 1, "Aladdin", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6002040581226?$thumb$" ],
  [ 14, 1, "Jasmine", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581122?$thumb$" ],
  [ 15, 1, "Kristoff", "http://cdn.s7.disneystore.com/is/image/DisneyShopping/6070040581130?$thumb$" ],
  [ 16, 1, "Tiana", "http://m.disneystore.com/disney-animators-collection-tiana-doll-16/mp/1362754/1000259/" ],
  [ 17, 2, "Harry Potter and the Philosopher's Stone", "https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg/200px-Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg"],
  [ 18, 2, "Harry Potter and the Chamber of Secrets", "https://upload.wikimedia.org/wikipedia/en/5/5c/Harry_Potter_and_the_Chamber_of_Secrets.jpg"],
  [ 19, 2, "Harry Potter and the Prisoner of Azkaban", "https://upload.wikimedia.org/wikipedia/en/a/a0/Harry_Potter_and_the_Prisoner_of_Azkaban.jpg"],
  [ 20, 2, "Harry Potter and the Goblet of Fire", "https://upload.wikimedia.org/wikipedia/en/c/c7/Harry_Potter_and_the_Goblet_of_Fire.jpg"],
  [ 21, 2, "Harry Potter and the Order of the Phoenix", "https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Harry_Potter_and_the_Order_of_the_Phoenix.jpg/200px-Harry_Potter_and_the_Order_of_the_Phoenix.jpg"],
  [ 22, 2, "Harry Potter and the Half-Blood Prince", "https://upload.wikimedia.org/wikipedia/en/f/f0/Harry_Potter_and_the_Half-Blood_Prince.jpg"],
  [ 23, 2, "Harry Potter and the Deathly Hallows", "https://upload.wikimedia.org/wikipedia/en/a/a9/Harry_Potter_and_the_Deathly_Hallows.jpg" ]
]

collections = [
  [ 1, "Disney Dolls Collection" ],
  [ 2, "Harry Potter books" ]
]

users = [
  [1, "Denis", "denis@mail.ru"],
  [2, "Dasha", "dasha@mail.ru" ],
  [3, "Marmilasha", "marmilasha@mail.ru" ]
]

user_collections = [
  [1, 1, false],
  [2, 1, false],
  [2, 2, true],
  [3, 1, false],
  [3, 2, false]
]

user_items = [
  [1,1,0], [1,2,0], [1,3,0], [1,4,0], [1,5,0], [1,6,0], [1,7,0], [1,8,0], [1,9,0], [1,10,0], [1,11,2], [1,12,0], [1,13,0], [1,14,0], [1,15,1], [1,16,0],
  [2,1,1], [2,2,1], [2,3,1], [2,4,3], [2,5,1], [2,6,0], [2,7,0], [2,8,0], [2,9,1], [2,10,0], [2,11,0], [2,12,1], [2,13,1], [2,14,0], [2,15,1], [2,16,1],
  [3,1,0], [3,2,2], [3,3,0], [3,4,0], [3,5,0], [3,6,2], [3,7,0], [3,8,0], [3,9,1], [3,10,0], [3,11,0], [3,12,1], [3,13,0], [3,14,2], [3,15,0], [3,16,1],
  [2,17,0], [2,18,1], [2,19,0], [2,20,0], [2,21,0], [2,22,0], [2,23,0],
  [3,17,0], [3,18,0], [3,19,0], [3,20,0], [3,21,0], [3,22,0], [3,23,0]
]


disney_items.each do |id, collection_id, title, image|
  Item.create( id: id, collection_id: collection_id, title: title, image: image )
end

collections.each do |id, title|
  Collection.create( id: id, title: title )
end

users.each do |id, name, email|
  User.create( id: id, name: name, email: email )
end

user_collections.each do |user_id, collection_id, complited|
  UserCollection.create( user_id: user_id, collection_id: collection_id, complited: complited )
end

user_items.each do |user_id, item_id, count|
  UserItem.create( user_id: user_id, item_id: item_id, count: count )
end
