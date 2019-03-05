class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    @input_product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @input_product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    @input_product.save
    render "show.json.jbuilder"
  end

  def update
    @input_product = Product.find_by(id: params[:id])
    @input_product.name = params[:name] || @input_product.name
    @input_product.price = params[:price] || @input_product.price
    @input_product.image_url = params[:image_url] || @input_product.image_url
    @input_product.description = params[:description] || @input_product.description 
    @input_product.save
    render "show.json.jbuilder"
  end

  def destroy
    @input_product = Product.find_by(id: params[:id])
    @input_product.destroy
    render json: {message: "You successfully removed your product."}
  end

end
