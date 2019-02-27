class Api::ProductsController < ApplicationController
  def product_method
    all_products = Product.all
    render "product.json.jbuilder"
  end
end
