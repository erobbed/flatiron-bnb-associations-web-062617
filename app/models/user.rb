class User < ActiveRecord::Base

  has_many :reservations
  has_many :reviews, through: :reservations
  has many :reservations, though: :listings
  has_many :listings, :foreign_key => 'host_id'
rai

end
