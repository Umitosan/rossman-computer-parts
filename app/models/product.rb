class Product < ActiveRecord::Base

  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true

  # scope :alphabetical, -> { order(name: :asc) }

end
