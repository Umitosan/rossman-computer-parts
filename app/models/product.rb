class Product < ActiveRecord::Base

  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true

  scope :newest, -> { order(created_at: :desc).limit(3) }

  scope :from_usa, -> { where(country: 'USA') }

  scope :most_reviewed, -> {(
    select("products.id, products.*, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(10)
    )}

end
