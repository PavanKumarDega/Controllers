class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :std
      t.integer :strength

      t.timestamps
    end
  end
end
