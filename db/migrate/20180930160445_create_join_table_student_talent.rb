class CreateJoinTableStudentTalent < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :talents do |t|
      # t.index [:student_id, :talent_id]
      # t.index [:talent_id, :student_id]
    end
  end
end
