class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :plain_body
      t.text :rich_body
      t.timestamps
    end
  end
end
