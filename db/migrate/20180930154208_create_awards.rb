class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.string :description
      t.string :cateogry

      t.timestamps
    end
  end
end
