class Track < ApplicationRecord
  has_and_belongs_to_many :artists
  has_many :genres, -> { distinct }, through: :artists

  validates :name, presence: true
  validates :spotify_id, presence: { message: I18n.t('active_record_validations.spotify_id.presence') }, uniqueness: { message: I18n.t('active_record_validations.spotify_id.uniqueness') }
end
