class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.integer :num_of_employees

      t.timestamps
    end
  end
end
