class CreateTamus < ActiveRecord::Migration[6.0]
  def change
    create_table :tamus do |t|
      t.datetime :published_at
      t.date :tglaktifitas
      t.string :kodebooking
      t.string :namatamu
      t.integer :qty
      t.text :hotel
      t.string :negara
      t.integer :telp
      t.integer :email
      t.string :driver
      t.text :note
      t.references :paket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
