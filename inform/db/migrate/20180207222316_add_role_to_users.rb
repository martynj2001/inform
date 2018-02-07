class AddRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rank, :string
    add_column :users, :name, :string
    add_column :users, :num, :string
  end
end
