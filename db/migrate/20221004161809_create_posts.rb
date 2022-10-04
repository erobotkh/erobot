class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :plain_body
      t.text :rich_body
      
      t.belongs_to :taxon, null: false, foreign_key: true
      t.belongs_to :taxonomy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
