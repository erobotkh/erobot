class CreateClassifications < ActiveRecord::Migration[7.0]
  def change
    create_table :classifications do |t|
      t.integer :post_id
      t.integer :taxon_id
      t.integer :position
      t.json :preference

      t.timestamps
    end
  end
end
