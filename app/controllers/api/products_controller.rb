class Api::ProductsController < ApplicationController
  def product_method
    @all_products = Product.all
    @product_first = Product.first
    @product_second = Product.second
    @product_third = Product.third
    render "product.json.jbuilder"
  end
end
