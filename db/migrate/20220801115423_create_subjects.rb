class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :sub_name
      t.string :std

      t.timestamps
    end
  end
end
