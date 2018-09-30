class CreateTalents < ActiveRecord::Migration[5.2]
  def change
    create_table :talents do |t|
      t.string :name
      t.string :experience

      t.timestamps
    end
  end
end
