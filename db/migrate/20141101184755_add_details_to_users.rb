class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string, null: false
    add_column :users, :lastname, :string, null: false
    add_column :users, :admin, :boolean, null: false, default: false
  end
end
