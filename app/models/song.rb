class Song < ApplicationRecord
    has_many :billboards
    has_many :artist, through: :billboards
end
