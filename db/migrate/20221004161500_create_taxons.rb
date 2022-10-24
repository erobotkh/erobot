class CreateTaxons < ActiveRecord::Migration[7.0]
  def change
    create_table :taxons do |t|
      t.string :name
      t.integer :position
      t.integer :parent_id, index: true
      t.belongs_to :taxonomy, null: false, foreign_key: true
      t.timestamps
    end
    add_index :taxons, [:name, :taxonomy_id], :unique => true
  end
end
