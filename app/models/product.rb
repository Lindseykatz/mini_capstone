class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0}
  validates :description, length: { in:2..500 }

  def is_discounted?
    # if price <= 75
    #   true
    # else
    #   false
    # end
    # or you can put...
    price <= 75
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def images
    Image.where(product_id: id)
  end

end
