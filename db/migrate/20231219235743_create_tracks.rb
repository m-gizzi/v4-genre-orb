class CreateTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.string :spotify_id, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
