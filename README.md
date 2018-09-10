# rubyRESTAPI

# Start Project API

- run `rails new 'Project Name' --api`

- if you want to change database (by default is sqlite3), go to config > locales > database.yml, then change that file.

- to create a table `rails g model 'tablename(Movie)' 'keyname(title)':'datatype(string)'`

- Migrate database run `rails db:migrate`

- varidate data. go to app > models > (file created)articles.rb, add line `varidates :title, presence: true`, that means it is require.

 - Optional, add fake data using `Fake`, go to Gemfile, add line `gem 'faker'` and run `bundle install`.

- Generate datas, go to db > seeds.rb, add `10.times do Articles({ title: Faker::Book.title, body: Faker::Lorem.sentence })`

