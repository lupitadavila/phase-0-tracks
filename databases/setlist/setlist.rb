# SETLIST
# This program allows bands to create and modify
# a setlist for their live shows

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("setlist.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS setlist(
    id INTEGER PRIMARY KEY,
    song_name VARCHAR(255),
    length INT,
    key_of VARCHAR(255),
    new_album BOOLEAN
  )
SQL

# create a setlist table (if it's not there already)
db.execute(create_table_cmd)

# method add_song
# create row in database and add info
def add_song(db, song_name, length, key_of, new_album)
  db.execute("INSERT INTO setlist (song_name,length,key_of,new_album) VALUES (?, ?, ?, ?)", [song_name, length, key_of, new_album])
end

#add_song(db,"Como La Flor", 4, "G","false")
#add_song(db,"Sabor a Mi",3,"C","true")

def modify_song_name(db,old_name,new_name)
	db.execute("UPDATE setlist SET song_name=? WHERE song_name=?",[new_name,old_name])
end

def delete_old_songs(db)
	db.execute("DELETE FROM setlist WHERE new_album=?",["false"])
end
def print_setlist(db)
	setlist = db.execute("SELECT * FROM setlist")
	setlist.each do |song|
		puts "#{song['song_name']} in key of #{song['key_of']} and is #{song['length']} minutes long."
	end
end

#modify_song_name(db,"Sabor a Mi","Gema")

#5.times do
#  add_song(db, Faker::Name.name, 0)
#end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

answer = nil
puts "Welcome to Setlist Generator 1.0"
while answer != "EXIT"
	puts "\n\nTo do one of the following tasks, type on of the following:"
	puts "ADD - Add a new song to the setlist"
	puts "EDIT - Edit a song name on the setlist"
	puts "DELETE - Delete songs from old album"
	puts "PRINT - Print the current setlist"
	puts "EXIT - Exit this program\n\n"

	answer = gets.chomp

	if answer == "ADD"
		puts "\nAdd a song"
		puts "What is the song name?"
		song_name = gets.chomp

		puts "What is the song length? (round off seconds to nearest minute)"
		length = gets.chomp.to_i

		puts "What key is the song in?"
		key = gets.chomp

		puts "Is it from your new album? (y or n)"
		new_album = gets.chomp
		if new_album == "y"
			new_album = "true"
		else
			new_album = "false"
		end
		add_song(db,song_name,length,key,new_album)
	elsif answer == "EDIT"
		puts "\nEdit a song name"
		puts "What song are you trying to edit?"
		old_song = gets.chomp
		puts "What is the new song name?"
		new_song = gets.chomp
		modify_song_name(db,old_song,new_song)
	elsif answer == "DELETE"
		puts "\n Deleting old songs..."
		delete_old_songs(db)
	elsif answer == "PRINT"
		puts "\nPrinting setlist..."
		print_setlist(db)
	elsif answer == "EXIT"
		puts "Thank you. Setlist Generator will now exit."
	end
end



