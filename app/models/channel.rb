class Channel < ApplicationRecord
  
  validates_uniqueness_of :name
  has_many :tv_shows

end
