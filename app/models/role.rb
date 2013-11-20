class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor

  # def actor
  #   return Actor.find(actor_id)
  # end

  # def movie
  #   return Movie.find(movie_id)
  # end
end
