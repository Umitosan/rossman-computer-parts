class Product < ActiveRecord::Base

  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true

  scope :newest, -> { order(created_at: :desc).limit(3) }

  scope :from_usa, -> { where(country: 'USA') }

  # scope :alphabetical, -> { order(name: :asc) }

end
