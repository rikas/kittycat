class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.text :description, null: false
      t.boolean :claimed, default: false
      t.integer :age
      t.string :color

      t.timestamps
    end
  end
end
