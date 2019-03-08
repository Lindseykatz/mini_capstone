class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Suppliers.all

    render "index.json.jbuilder"
  end

  def create
    @supplier = Suppliers.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
    @supplier.save

    render "show.json.jbuilder"
  end

  def show
    
  end
end
