class AddNetworkIdToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :network_id, :integer
  end
end
