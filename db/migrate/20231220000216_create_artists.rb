class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :spotify_id, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
