class CreateChapitres < ActiveRecord::Migration[7.0]
  def change
    create_table :chapitres do |t|
      t.string :title
      t.text :content
      t.integer :choice
      t.integer :consequence

      t.timestamps
    end
    add_index :chapitres, :title, unique: true
  end
end
