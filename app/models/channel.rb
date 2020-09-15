class Channel < ApplicationRecord
  
  validates :name, presence: true
  validates :location, presence: true

  validates_uniqueness_of :name

  has_many :tv_shows

end
