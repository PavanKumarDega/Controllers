class AddColumnToSchool < ActiveRecord::Migration[6.0]
  def change
    change_table :schools do |t|
      t.string :name
      t.string :location
    end
  end
end
