class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :title
      t.string :image_id
      t.text :explanation
      t.string :box
      t.string :tag
      t.integer :user_id

      t.timestamps
    end
  end
end
