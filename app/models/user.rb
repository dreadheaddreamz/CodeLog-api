class User < ApplicationRecord
    has_many :trackers
    has_many :todos
end
