class AddStockOptionToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stock_availability, :boolean
  end
end
