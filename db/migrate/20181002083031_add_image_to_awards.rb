class AddImageToAwards < ActiveRecord::Migration[5.2]
  def change
    add_column :awards, :image, :string
  end
end
