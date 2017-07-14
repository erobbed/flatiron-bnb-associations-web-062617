class User < ActiveRecord::Base

  # has_many :reservations, foreign_key: 'guest_id'

  #  as a host
  has_many :listings, foreign_key: 'host_id'
  has_many :reservations, through: :listings

  # as a guest
  has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'
  has_many :reviews, through: :trips

  #  this is EXACTLY the same SQL as line above (has_many :trips)
  # def trips
  #   Reservation.where(guest_id: self.id)
  # end



  # def reviews
  #   self.reviews
  # end
end
