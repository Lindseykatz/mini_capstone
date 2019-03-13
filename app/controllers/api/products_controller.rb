class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    name_search = params[:search]
    if name_search
      @products = @products.where("name ILIKE ?", "%#{name_search}%")
    end

    if params["discount"]
      @products = @products.where("price < ?", 75)
    end

    price_sort = params[:sort]
    price_sort_order = params[:sort_order]
    discount = params[:discount]
    if price_sort == "price" && price_sort_order == "desc"
      @products = @products.order(:price => :desc)
    elsif price_sort == "price"
      @products = @products.order(:price => :asc)
    else 
      @products = @products.order(:id => :asc) 
    end

    render "index.json.jbuilder"

    #Change the index action to allow the user to see products in order of price, lowest to highest (using params “sort” equal to “price”).
  end

  def show
    @input_product = Product.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @input_product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
      )
    if @input_product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @input_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @input_product = Product.find_by(id: params[:id])
    @input_product.name = params[:name] || @input_product.name
    @input_product.price = params[:price] || @input_product.price
    @input_product.description = params[:description] || @input_product.description 
    @input_product.supplier_id = params[:supplier_id] || @input_product.supplier_id
    if @input_product.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @input_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @input_product = Product.find_by(id: params[:id])
    @input_product.destroy
    render json: {message: "You successfully removed your product."}
  end

end
