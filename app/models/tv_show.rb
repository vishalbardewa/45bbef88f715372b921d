class TvShow < ApplicationRecord
  
  validates :title, presence: true
  validates :channel_id, presence: true

  belongs_to :channel

end
