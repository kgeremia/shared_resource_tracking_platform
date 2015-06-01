class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :network_id
      t.date :met_on

      t.timestamps

    end
  end
end
