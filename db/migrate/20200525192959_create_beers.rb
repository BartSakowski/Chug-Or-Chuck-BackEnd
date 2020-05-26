class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :location
      t.string :brand
      t.string :image
      t.string :uploader_comment
      t.integer :chugs
      t.integer :chucks

      t.timestamps
    end
  end
end
