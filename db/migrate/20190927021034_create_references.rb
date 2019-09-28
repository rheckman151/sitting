class CreateReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :references do |t|
      t.text :post
      t.string :rating
      t.integer :client_id
      t.integer :pet_id
      t.timestamps
    end

    add_index :references, [:client_id, :pet_id]
    add_index :references, :pet_id
  end
end
