class Movie < ActiveRecord::Base
  belongs_to :director

  # def director
  #   return Director.find(director_id)
  # end

  has_many :roles

  # def roles
  #   return Role.where(:movie_id => id)
  # end

  has_many :actors, :through => :roles
end
