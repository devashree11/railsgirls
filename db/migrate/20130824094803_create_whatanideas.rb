class CreateWhatanideas < ActiveRecord::Migration
  def change
    create_table :whatanideas do |t|
      t.string :name
      t.text :address
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
