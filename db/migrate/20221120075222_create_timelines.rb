class CreateTimelines < ActiveRecord::Migration[7.0]
  def change
    create_table :timelines do |t|
      t.string :headline
      t.string :description
      t.string :timeline_type

      t.datetime :started_at
      t.datetime :ended_at

      t.references :member, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
