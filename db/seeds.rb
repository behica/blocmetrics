require 'devise'

user = User.new(
  email:                  'admin@example.com',
  password:               'helloworld',
  password_confirmation:  'helloworld'
)
user.skip_confirmation!
user.save!

10.times do
  RegisteredApplication.create!(
    name: Faker::App.name,
    url:  Faker::Internet.domain_name,
    user: User.first
  )
end
apps = RegisteredApplication.all

100.times do
  Event.create!(
    eventname:              Faker::Hacker.verb,
    created_at:             Faker::Date.backward(14),
    registered_application: apps.sample
  )
end

puts "Seed finished"
puts "#{User.count} user created"
puts "#{RegisteredApplication.count} apps created"
puts "#{Event.count} events created"
