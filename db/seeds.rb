# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"


10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "t enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?!",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills posts created"

8.times do |portofolio|
  Portofolio.create!(
    title: "Portofolio Title #{portofolio}",
    subtitle: "Ruby on Rails",
    body: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

1.times do |portofolio|
  Portofolio.create!(
    title: "Portofolio Title #{portofolio}",
    subtitle: "Angular",
    body: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end


puts "9 portofolio items created"

# 3.times do |technology|
#   Technology.create!(
#     name: "Technology #{technology}",
#     portofolio_id: 1
#   )
# end

3.times do |technology|
  Portofolio.last.technologies.create!(
    name: "Technology #{technology}"
)
end


puts "3 technologies items created"
