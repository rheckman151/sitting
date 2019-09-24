class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :gender
      t.integer :age
      t.boolean :medication
      t.boolean :pay
      t.timestamps
    end
  end
end
