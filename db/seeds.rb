puts "Cleaning database..."
Movie.destroy_all

puts "Creating restaurants..."
movie1 = { title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2WCNZfIUUGILb6fTuV1Y4Ww1Jef8peQkoWA&usqp=CAU", rating: 8.7}
movie2 = { title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnnz6WMRYnLxNWqhB0uOnMhTBnVcXmSEbUAw&usqp=CAU", rating: 7.9}

[movie1, movie2].each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end

list1 = List.create(name: "action")
puts "Created #{list1.name}"
list2 = List.create(name: "romance")
puts "Created #{list2.name}"

puts "Finished!"
