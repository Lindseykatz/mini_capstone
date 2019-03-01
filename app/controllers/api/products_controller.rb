class Api::ProductsController < ApplicationController
  def all_products_method
    @all_products = Product.all
    render "product.json.jbuilder"
  end

  def first_product_method
    @product_first = Product.first
    render "product.json.jbuilder"
  end

  def second_product_method
    @product_second = Product.second
    render "product.json.jbuilder"
  end

  def third_product_method
    @product_third = Product.third
    render "product.json.jbuilder"
  end

  def search_product_method
    input_product = params["search_product"].to_i
    @input_product = Product.find_by(id: input_product)
    render "product.json.jbuilder"
  end

  def search_product_body_method
    input_product = params["search_product_body"].to_i
    @input_body_product = Product.find_by(id: input_product)
    render "product.json.jbuilder"
  end    
end
