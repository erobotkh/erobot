class CreateSocials < ActiveRecord::Migration[7.0]
  def change
    create_table :socials do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :username

      t.references :connectable, polymorphic: true
      t.references :social_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
