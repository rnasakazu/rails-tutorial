class CreateAdminRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_rooms do |t|
      t.references :admin, foreign_key: true
      t.references :room, foreign_key: true
      t.datetime :last_accessed_at

      t.timestamps
    end
  end
end
