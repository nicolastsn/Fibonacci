class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :st_number, :string
    add_column :users, :st_name, :string
    add_column :users, :zip, :string
    add_column :users, :city, :string
    add_column :users, :situation, :string
    add_column :users, :pdl, :string
  end
end
