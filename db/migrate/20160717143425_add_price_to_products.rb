class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :number
  end
end
