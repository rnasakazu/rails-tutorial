class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :messageable, polymorphic: true
      t.references :room, null: false

      t.timestamps
    end
  end
end
