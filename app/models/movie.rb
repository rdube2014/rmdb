class Movie < ActiveRecord::Base
  belongs_to :director
  has_many :roles
  has_many :actors, :through => :roles

  validates(:title, { :presence => true, :uniqueness => true })
  validates :director_id, :presence => true, :numericality => { :only_integer => true }
  validates :year, :presence => true, numericality: { only_integer: true }
end
