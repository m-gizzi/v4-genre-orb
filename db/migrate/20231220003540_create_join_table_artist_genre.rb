# frozen_string_literal: true

class CreateJoinTableArtistGenre < ActiveRecord::Migration[7.1]
  def change
    create_join_table :artists, :genres do |t|
      t.index %i[artist_id genre_id], unique: true
      t.index %i[genre_id artist_id]
    end
  end
end
