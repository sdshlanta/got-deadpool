class Player < ActiveRecord::Base
  belongs_to :deadpool
  has_many :slots

  # attr_accessor :deadpool_id
end
