class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :emp_id, index: true
      t.string :date_of_birth
      t.timestamps
    end
  end
end
