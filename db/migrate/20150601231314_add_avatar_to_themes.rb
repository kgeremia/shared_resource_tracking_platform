class AddAvatarToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :avatar, :string
  end
end
