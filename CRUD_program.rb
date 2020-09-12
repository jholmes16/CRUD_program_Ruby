<<<<<<< HEAD
movies = {
  scarface: 4
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
  when "add"
    puts "Please enter a movie title."
    title = gets.chomp
    puts "Please enter a rating."
    rating = gets.chomp
    if movies[title.to_sym] == nil
      movies[title.to_sym] = rating.to_i
      puts "The movie and rating has been added."
    else
      puts "The movie has already been added"
    end
  when "update"
    puts "Please enter a movie title."
    title = gets.chomp
    if  movies[title.to_sym] == nil
      puts "This movie has not been added"
    else
      puts "What is the new rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The #{title} has been updated to rating #{rating}"
    end
  when "display"
    movies.each do |key, value|
      puts "#{key}: #{value}"
    end
  when "delete"
    puts "Please enter a movie title."
    title = gets.chomp
    if  movies[title.to_sym] == nil
      puts "This movie has not been added"
    else
      movies.delete(title.to_sym)
      puts "The movie has already been deleted"
    end
  else
      puts "Error!"
=======
movies = {
  scarface: 4
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
  when "add"
    puts "Please enter a movie title."
    title = gets.chomp
    puts "Please enter a rating."
    rating = gets.chomp
    if movies[title.to_sym] == nil
      movies[title.to_sym] = rating.to_i
      puts "The movie and rating has been added."
    else
      puts "The movie has already been added"
    end
  when "update"
    puts "Please enter a movie title."
    title = gets.chomp
    if  movies[title.to_sym] == nil
      puts "This movie has not been added"
    else
      puts "What is the new rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The #{title} has been updated to rating #{rating}"
    end
  when "display"
    movies.each do |key, value|
      puts "#{key}: #{value}"
    end
  when "delete"
    puts "Please enter a movie title."
    title = gets.chomp
    if  movies[title.to_sym] == nil
      puts "This movie has not been added"
    else
      movies.delete(title.to_sym)
      puts "The movie has already been deleted"
    end
  else
      puts "Error!"
>>>>>>> 4edeb3435f4123f408911d5090a8d86bbc7493b3
end