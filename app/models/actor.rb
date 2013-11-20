class Actor < ActiveRecord::Base
  has_many :roles

  # def roles
  #   return Role.where(:actor_id => id)
  # end

  has_many :movies, :through => :roles
end
