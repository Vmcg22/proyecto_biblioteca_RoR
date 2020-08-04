class AddGananciasAnualesToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :ganancias_anuales, :decimal
  end
end
