class Viewer
  attr_accessor :first_name, :last_name, :movie, :rating

  @@all = []
  @@ratings = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def full_name
    @first_name = @name.split(" ")[0]
    @last_name = @name.split(" ")[1]
    @full_name = @first_name + " " + @last_name
    # "#{first_name} #{last_name}"
    @full_name
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # given a string of a full name, returns the
    # first customer whose full name matches

    self.all.each do |each_viewer_instance|
      if each_viewer_instance.full_name == name
        return each_viewer_instance
      end
    end
  end

  def create_rating
    # given a score and a movie, creates a new
    #Rating and associates it with that viewer and
    #that movie
    rating = Rating.new
    self.ratings << rating
  end
end
