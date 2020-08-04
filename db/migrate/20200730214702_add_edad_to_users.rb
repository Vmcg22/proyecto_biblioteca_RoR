class AddEdadToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :edad, :integer
  end
end
