class Product < ApplicationRecord
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
end
