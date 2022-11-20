class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.integer :position
      t.integer :parent_id, index: true

      t.timestamps
    end
    add_index :teams, [:name, :parent_id], :unique => true
  end
end
