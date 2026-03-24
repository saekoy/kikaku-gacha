class CreateWeeklySchedules < ActiveRecord::Migration[8.1]
  def change
    create_table :weekly_schedules do |t|
      t.string :uuid
      t.integer :idea_1_id
      t.integer :idea_2_id
      t.integer :idea_3_id
      t.integer :idea_4_id
      t.integer :idea_5_id
      t.integer :idea_6_id
      t.integer :idea_7_id

      t.timestamps
    end
    add_index :weekly_schedules, :uuid
  end
end
