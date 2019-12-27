class CreatePakets < ActiveRecord::Migration[6.0]
  def change
    create_table :pakets do |t|
      t.string :jenispaket
      t.string :namapaket
      t.text :desk
      t.text :include
      t.text :exclude
      t.integer :harga
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
