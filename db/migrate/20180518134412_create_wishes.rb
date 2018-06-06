class CreateWishes < ActiveRecord::Migration[5.1]
  def change
    create_table :wishes do |t|
      t.string :title
      t.integer :price
      t.string :lien
      t.string :content

      t.timestamps
    end
  end
end
