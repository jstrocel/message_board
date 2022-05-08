# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user1 = User.create(email: "anybody@home.com", password: "password", name: Faker::Name.name, about_me: Faker::Marketing.buzzwords )
@user2 = User.create(email: "everybody@here.com", password: "password", name: Faker::Name.name, about_me: Faker::Marketing.buzzwords )
User.all.each do |user|
    10.times do 
      user.posts.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)    
    end
end

Post.all.each do |post|
    @user1.comments.create(post:post, body: 'I am making a comment')
    @user2.comments.create(post:post, body: 'I am  responding to your comment')
end


