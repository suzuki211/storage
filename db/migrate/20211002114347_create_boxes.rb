class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.text :title
      t.string :image_id
      t.text :explanation
      t.integer :user_id

      t.timestamps
    end
  end
end
