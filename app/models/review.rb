class Review < ActiveRecord::Base

  belongs_to :product

  validates :author, :presence => true
  validates :body, :presence => true
  validates_length_of( :body, within: 50..250,
                      too_long: 'reveiw too long',
                      too_short: 'review too short' )
  validates :rating, :presence => true
  validates_numericality_of(:rating, less_than: 6)
  validates_numericality_of(:rating, greater_than: 0)
  validates :product_id, :presence => true

end
