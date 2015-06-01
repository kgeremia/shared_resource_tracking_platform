class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :network_id
      t.string :name
      t.string :school_id
      t.string :address
      t.string :phone_number

      t.timestamps

    end
  end
end
