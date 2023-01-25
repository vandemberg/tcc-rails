class CreateRops < ActiveRecord::Migration[7.0]
  def change
    create_table :rops do |t|
      t.string :name
      t.references :neighbourhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
