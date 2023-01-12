class CreateNeighbourhoods < ActiveRecord::Migration[7.0]
  def change
    create_table :neighbourhoods do |t|
      t.string :name

      t.timestamps
    end
  end
end
