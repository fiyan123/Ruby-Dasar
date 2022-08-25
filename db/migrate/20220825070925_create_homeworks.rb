class CreateHomeworks < ActiveRecord::Migration[7.0]
  def change
    create_table :homeworks do |t|
      t.text :homework_name
      t.string :category
      t.date :deadline
      t.text :description

      t.timestamps
    end
  end
end
