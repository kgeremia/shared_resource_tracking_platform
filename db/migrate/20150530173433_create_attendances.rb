class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :meeting_id
      t.integer :teacher_id
      t.string :attendance
      t.string :note
      t.integer :theme_id

      t.timestamps

    end
  end
end
