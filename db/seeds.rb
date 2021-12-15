# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  name = Faker::Name.first_name
  bio_quote = Faker::Quotes::Shakespeare
    user = User.create(
      name: name,
      photo: "https://randomuser.me/api/portraits/men/jpg",
      bio: bio_quote
    )
    5.times do |i|
      post = Post.create(
        user_id: user.id,
        title: 'Shakespear bish',
        text: bio_quote)
        7.times do |j|
          comment = Comment.create(
            user_id: user.id,
            posts_id: post.id,
            text: 'Thau Post art scheit beith a bit less lameth'
          )
        end
    end
end