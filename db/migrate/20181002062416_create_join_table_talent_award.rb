class CreateJoinTableTalentAward < ActiveRecord::Migration[5.2]
  def change
    create_join_table :talents, :awards do |t|
      # t.index [:talent_id, :award_id]
      # t.index [:award_id, :talent_id]
    end
  end
end
