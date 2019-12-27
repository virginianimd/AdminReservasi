ActiveAdmin.register Paket do
  permit_params :jenispaket, :namapaket, :desk, :include, :exclude, :harga, :supplier_id
end
