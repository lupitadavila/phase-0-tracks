# require gems
require 'sinatra'
require "sinatra/reloader"
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end
# http route for new page
get '/students/remove' do
  @students = db.execute("SELECT * FROM students")
  erb :student_removal
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


# remove a student via form
post '/remove' do
	db.execute("DELETE FROM students WHERE name=?",[params['name']])
	redirect '/'
end

# add static resources