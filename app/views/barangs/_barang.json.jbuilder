json.extract! barang, :id, :nama, :jenis, :bahan, :created_at, :updated_at
json.url barang_url(barang, format: :json)
