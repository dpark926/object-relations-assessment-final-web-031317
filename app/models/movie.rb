class Movie
  attr_accessor :title, :viewer

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    # returns an array of all movies
    @@all
  end

  def find_by_title(title)
    # given a string of movie title, returns the first
    # movie that matches

    self.all.each do |each_movie_instance|
      if each_movie_instance.title == title
        return each_movie_instance
      end
    end
  end

  def ratings
    # returns an array of all ratings for that movie
    Ratings.all
  end

  def viewers
    # should return all of the viewers who have left
    # ratings for that movie.

  end

  def average_rating
    # should return the average of all of the scores
    # for the ratings of that particular movie.
  end
end
