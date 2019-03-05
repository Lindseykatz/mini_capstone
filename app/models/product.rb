class Product < ApplicationRecord
  def is_discounted?
    if price < 75
      true
    else
      false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
