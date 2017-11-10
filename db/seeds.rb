require 'faker'

100.times do
  User.create(name: Faker::Name.name, email_address: Faker::Internet.email)
end

400.times do
  my_bool = {1 => true, 0 => false}
  Email.create(user_id: rand(1..100), recipient_id: rand(1..100), subject: Faker::TwinPeaks.quote, content: Faker::SiliconValley.quote, sent: my_bool[rand(0..1)], read: false)
end
