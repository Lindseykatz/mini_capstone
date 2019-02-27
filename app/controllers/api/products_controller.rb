class Api::ProductsController < ApplicationController
  def product_method
    @all_products = Product.all
    @product_name = Product.first.name
    render "product.json.jbuilder"
  end
end
