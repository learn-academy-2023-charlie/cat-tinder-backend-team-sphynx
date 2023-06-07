class Mgame < ApplicationRecord
    validates :name, :game_type, :file_size, :summary, :img,  presence: true
    validates :summary, length: {minimum: 10}
end
