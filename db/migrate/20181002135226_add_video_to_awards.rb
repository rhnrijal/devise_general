class AddVideoToAwards < ActiveRecord::Migration[5.2]
  def change
    add_column :awards, :video, :string
  end
end
