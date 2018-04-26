class Product < ApplicationRecord
  validates :name, presence: true
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }

  has_many :comments

  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end  
  
  def average_rating
    comments.average(:rating).to_f
  end
end
