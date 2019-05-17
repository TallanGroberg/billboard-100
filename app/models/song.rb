class Song < ApplicationRecord
  belongs_to :art
  belongs_to :billboard, optional: true
end
