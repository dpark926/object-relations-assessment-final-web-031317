class Rating
  attr_accessor :score, :viewer, :movie

  @@all = []

  def self.all
    # returns all of the ratings
    @@all
  end

  def viewer
    # returns the viewer for that given rating
  end

  def movie
    # returns the movie for that given rating
    self.all
  end
end
