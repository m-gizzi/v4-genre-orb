class CreateJoinTableArtistTrack < ActiveRecord::Migration[7.1]
  def change
    create_join_table :artists, :tracks do |t|
      t.index [:artist_id, :track_id], unique: true
      t.index [:track_id, :artist_id]
    end
  end
end
