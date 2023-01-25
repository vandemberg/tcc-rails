class CreateSocialGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :social_groups do |t|
      t.string :name
      t.references :neighbourhood, null: false, foreign_key: true
      t.references :responsible, index: true, foreign_key: { to_table: :people }
      t.integer :group_type
      t.string :phone
      t.string :email
      t.string :notes

      t.timestamps
    end
  end
end
