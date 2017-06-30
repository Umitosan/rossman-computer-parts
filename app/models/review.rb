class Review < ActiveRecord::Base

  belongs_to :product

  validates :author, :presence => true
  validates :body, :presence => true
  validates_length_of( :body, within: 50..250,
              too_long: 'reveiw too long',
              too_short: 'review too short'
              )
  validates :rating, :presence => true
  validates :product_id, :presence => true

end
