namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_employees
  end
end

def make_users
  admin = User.create!(name:     "Example User",
                       email:    "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar",
                       admin: true)
    
# 99.times do |n|
#    name  = Faker::Name.name
#    email = "example-#{n+1}@railstutorial.org"
#    password  = "password"
#    User.create!(name:     name,
#                 email:    email,
#                 password: password,
#                 password_confirmation: password)
#  end
end

def make_employees
  10.times do |n|
    name           = Faker::Name.name
    at_work        = true
    working_hours  = 8.5
    breaks         = 0.1
    huddle         = 0.2
    one_on_ones    = 0.3
    team_meetings  = 0.4
    other_meetings = 0.5
    training       = 0.6
    other          = 0.7
    user_id        = 1
    Employee.create!(name:           name,
                     at_work:        at_work,
                     working_hours:  working_hours,
                     breaks:         breaks,
                     huddle:         huddle,
                     one_on_ones:    one_on_ones,
                     team_meetings:  team_meetings,
                     other_meetings: other_meetings,
                     training:       training,
                     other:          other,
                     user_id:        user_id)
  end
end