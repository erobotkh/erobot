class CreateTaxonomies < ActiveRecord::Migration[7.0]
  def change
    create_table :taxonomies do |t|
      t.string :name
      t.string :taxonomy_type
      t.integer :position

      t.timestamps
    end
    add_index :taxonomies, [:name, :taxonomy_type], :unique => true
  end
end
