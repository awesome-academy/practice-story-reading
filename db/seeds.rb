Permission.create!(name: "user")
Permission.create!(name: "uploader")
Permission.create!(name: "admin")

User.create!(name: "Le Duc Anh",
  email: "leducanh12011997@gmail.com",
  account: "admin",
  password: "111111",
  permission_id: 1)

user = User.first

3.times do |n|
    name = Faker::Name.name
    image = "vo-thuong-sat-than.jpg"
    author = Faker::Name.name
    description = Faker::Lorem.sentence(5)
    process = 0
    status = 1
    user_id = 1
    s = user.stories.build(name: name, image: image, author: author,
      description: description, process: process, status: status, user_id: user_id)
    s.save
end
3.times do |n|
  name = Faker::Name.name
  image = "vo-thuong-sat-than.jpg"
  author = Faker::Name.name
  description = Faker::Lorem.sentence(5)
  process = 1
  status = 0
  user_id = 1
  s = user.stories.build(name: name, image: image, author: author,
    description: description, process: process, status: status, user_id: user_id)
  s.save
end
