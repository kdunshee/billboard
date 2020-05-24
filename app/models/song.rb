class Song < ApplicationRecord
    has_many :billboards
    has_many :songs, through: :billboards
end
