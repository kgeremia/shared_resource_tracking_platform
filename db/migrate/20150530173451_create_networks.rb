class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.integer :user_id
      t.string :name

      t.timestamps

    end
  end
end
