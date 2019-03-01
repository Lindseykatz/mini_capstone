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
      description: params[:body_description],
      image_url: params[:body_image_url]
      )
    @input_product.save
    render "show.json.jbuilder"
  end

end
