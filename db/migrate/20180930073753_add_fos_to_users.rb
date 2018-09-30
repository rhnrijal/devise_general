class AddFosToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fos, :string
  end
end
