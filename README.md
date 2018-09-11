# Ruby (RoR) REST API

# Todo List (CRUD API)

- [ ] CREATE
- [X] READ, GET
- [ ] UPDATE
- [ ] DELETE
- [ ] CHANGE DATABASE

# Start Project API

- run `rails new 'Project Name' --api`
- if you want to change database (by default is sqlite3), go to config > locales > database.yml, then change that file.
- to create a table `rails g model 'tablename(Movie)' 'keyname(title)':'datatype(string)'`
- Migrate database run `rails db:migrate`
- varidate data. go to app > models > (file created)articles.rb, add line `validates :title, presence: true`, that means it is require.
- Optional, add fake data using `Fake`, go to Gemfile, add line `gem 'faker'` and run `bundle install`.
- Generate datas, go to db > seeds.rb, add `10.times do Articles.create({ title: Faker::Book.title, body: Faker::Lorem.sentence }) end`, then run `rails db:seed`

- Create folder api to app > controllers. Then create folder for version.

# Useful Rails Commands

`rails new foo`
Creates a new Rails applications in subdirectory foo.

`rails server`
Starts up a Web server on port 3000 running the current application; log messages from the server will appear on standard output.

`rails console`
Starts up a Rails application in interactive mode (you can type commands on the console); doesn't actually start a Web server. This command is convenient if you want to type commands interactively to test their behavior.

`rails generate controller foo a b`
Creates a new controller class FooController with a skeleton class definition in app/controllers/foo_controller.rb. It also creates skeleton action methods a and b in the controller, plus skeleton views in the files app/views/foo/a.html.erb and app/views/foo/a.html.erb. If a and b are omitted then the controller is created with no actions or views.

`rails generate model foo`
Creates a new model class Foo with a skeleton class definition in app/models/foo.rb and a skeletal migration in db/migrate/*_create_foos.rb.

`rails generate migration foo`
Creates a new migration in the file db/migrate/*_foo.rb.

`rails destroy model foo`
Deletes all of the files created by the rails generate model foo command above. The command has similar forms to match all of the other rails generate commands. This command is useful if you mistype a rails generate command.

`rake db:migrate`
Runs all migrations to bring the database up to date.

`rake db:reset`
Drops the database and creates a new one (does not run any migrations on the new database).

`rake db:migrate:reset`
Drops the database, creates a new one, and runs all migrations to bring the database up to date.

`rake db:migrate VERSION=20090909201633_create_photos.rb`
Runs migrations (either forward or backward) to restore the database to match the state just after the given migration.

`bundle update`
If you modify the Gemfile in a project in order to include new or different Ruby Gems, this command will update all of your Gems to match the Gemfile.

`gem update`
Updates all Ruby Gems to their latest versions.

`gem update rails--include-dependencies`
Updates Rails to the latest version, including all Gems that Rails depends upon.

`gem update --system`
Updates Ruby to the latest version. This command does not always appear to work on Macintoshes.

