class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students, id: false do |t|
      t.string :studentid , null: false
      t.string :name
      t.string :sex
      t.string :fos
      t.string :nationality

      t.timestamps
    end
    add_index :students, studentid, unique: true
  end
end
