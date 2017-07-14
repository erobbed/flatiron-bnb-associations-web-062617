class User < ActiveRecord::Base

  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :reservations, through: :listings
  has_many :listings, :foreign_key => 'host_id'

end
