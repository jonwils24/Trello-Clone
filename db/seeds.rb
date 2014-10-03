# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ActiveRecord::Base.transaction do
#   guest = User.create!(email: 'guest@gmail.com', password: 'password')
#
#   guestBoard = guest.boards.create(title: 'Final Project')
# end


guest = User.create(email: 'guest@gmail.com', password: 'password')
member1 = User.create(email: 'member1@gmail.com', password: 'password')
member2 = User.create(email: 'member2@gmail.com', password: 'password')

guestBoard1 = guest.boards.create(title: 'Final Project')
guestBoard2 = guest.boards.create(title: 'Readings')

memberBoard = member1.boards.create(title: 'Member Board')

guestBoardList1 = guestBoard1.lists.create(title: 'New List')
guestBoardList2 = guestBoard1.lists.create(title: 'Second List', ord: 1)

guestBoardListCard1 = guestBoardList1.cards.create(title: 'New Card')
guestBoardListCard2 = guestBoardList1.cards.create(title: 'Second Card', ord: 1)
guestBoardListCard3 = guestBoardList1.cards.create(title: 'Third Card', ord: 2)
guestBoardListCard4 = guestBoardList1.cards.create(title: 'Fourth Card', ord: 3)

boardMember1 = BoardMembership.create(user_id: 2, board_id: 1)
boardMember2 = BoardMembership.create(user_id: 3, board_id: 1)
boardMember3 = BoardMembership.create(user_id: 1, board_id: 3)


