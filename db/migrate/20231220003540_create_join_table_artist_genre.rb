class CreateJoinTableArtistGenre < ActiveRecord::Migration[7.1]
  def change
    create_join_table :artists, :genres do |t|
      t.index [:artist_id, :genre_id], unique: true
      t.index [:genre_id, :artist_id]
    end
  end
end
