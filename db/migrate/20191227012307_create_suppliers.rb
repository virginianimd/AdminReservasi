class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :namasup
      t.text :alamat
      t.string :email
      t.integer :telp
      t.text :termin

      t.timestamps
    end
  end
end
