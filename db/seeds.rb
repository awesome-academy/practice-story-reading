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

20.times do |n|
    name = Faker::Name.name
    image = Faker::Avatar.image
    author = Faker::Name.name
    description = Faker::Lorem.sentence(5)
    process = Faker::Number.between(0, 1)
    status = Faker::Number.between(0, 1)
    user_id = 1
    s = user.stories.build(name: name, image: image, author: author,
      description: description, process: process, status: status, user_id: user_id)
    s.save
end

20.times do |n|
  name = Faker::Name.name
  image = Faker::Avatar.image
  author = Faker::Name.name
  description = Faker::Lorem.sentence(5)
  process = Faker::Number.between(0, 1)
  status = Faker::Number.between(0, 1)
  s = user.stories.build(name: name, image: image, author: author,
    description: description, process: process, status: status)
  s.save
end

story = Story.first

50.times do |n|
  name = "Chapter " + n.to_s + ": " + Faker::Name.name
  image = Faker::Avatar.image
  content = Faker::Lorem.paragraphs
  story_id = 1
  s = story.chapters.build(name: name, image: image, content: content, story_id: story_id)
  s.save
end

50.times do |n|
  name = "Chapter " + n.to_s + ": " + Faker::Name.name
  image = Faker::Avatar.image
  content = Faker::Lorem.paragraphs
  story_id = 2
  s = story.chapters.build(name: name, image: image, content: content, story_id: story_id)
  s.save
end

20.times do |n|
  name = Faker::Name.name
  description = Faker::Lorem.sentence(5)
  s = Category.create(name: name, description: description)
  s.save
end
