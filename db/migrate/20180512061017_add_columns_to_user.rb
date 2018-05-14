class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :gender, :string
    add_column :users, :username, :string
  end
end
