class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :std
      t.string :rollno

      t.timestamps
    end
    add_index :students, :rollno
  end
end
