class CreateJoinTableStudentAward < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :awards do |t|
      # t.index [:student_id, :award_id]
      # t.index [:award_id, :student_id]
    end
  end
end
