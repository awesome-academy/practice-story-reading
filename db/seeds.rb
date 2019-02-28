Permission.create!(name: "user")
Permission.create!(name: "uploader")
Permission.create!(name: "admin")

User.create!(name: "Le Duc Anh",
  email: "admin@gmail.com",
  account: "admin",
  password: "111111",
  permission_id: 3)

User.create!(name: "Uploader",
  email: "uploader@gmail.com",
  account: "uploader",
  password: "111111",
  permission_id: 2)

User.create!(name: "User",
    email: "user@gmail.com",
    account: "user",
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

story = Story.first

50.times do |n|
  name = Faker::Name.name
  image = "vo-thuong-sat-than.jpg"
  content = "Content"
  story_id = 1
  s = story.chapters.build(name: name, image: image, content: content, story_id: story_id)
  s.save
end
