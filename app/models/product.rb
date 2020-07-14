class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :price, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 100 }

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
  
end



