class Api::ProductsController < ApplicationController

  def index
    @all_products = Product.all
    render "index.json.jbuilder"
  end

  def show
    @input_product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @input_product = Product.new(
      name: params[:body_name],
      price: params[:body_price],
      image_url: params[:body_image_url],
      description: params[:body_description]
      )
    @input_product.save
    render "show.json.jbuilder"
  end

  def update
    @input_product = Product.find_by(id: params[:id])
    @input_product.name = params[:body_name] || @input_product.name
    @input_product.price = params[:body_price] || @input_product.price
    @input_product.image_url = params[:body_image_url] || @input_product.image_url
    @input_product.description = params[:body_description] || @input_product.description 
    render "show.json.jbuilder"
  end
  
end
