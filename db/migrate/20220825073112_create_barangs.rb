class CreateBarangs < ActiveRecord::Migration[7.0]
  def change
    create_table :barangs do |t|
      t.text :nama
      t.string :jenis
      t.string :bahan

      t.timestamps
    end
  end
end
