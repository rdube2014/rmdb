class Director < ActiveRecord::Base
  has_many :movies

  # def movies
  #   return Movie.where(:director_id => id)
  # end
end
