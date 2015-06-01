class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :network_id
      t.string :name
      t.string :status
      t.integer :theme_id

      t.timestamps

    end
  end
end
