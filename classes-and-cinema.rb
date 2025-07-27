# classes-and-cinema.rb from Medium.com, "Object Relationships in Basic Ruby"

class Cinema
  attr_accessor :name, :location
  def initialize(name,location)
    @name = name
    @location = location
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movie
  attr_accessor :title, :show_time, :cinema
  @@all=[]
  def initialize(title,show_time)
    @title = title
    @show_time = show_time
    @@all << self
  end
end

cobble_hill = Cinema.new("Cobble Hill Cinema", "Court St, Brooklyn")
p cobble_hill

spider_man = Movie.new("Spider-Man", "9:00")
p spider_man

cobble_hill.add_movie(spider_man)
p cobble_hill