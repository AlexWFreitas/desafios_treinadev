class Book < ApplicationRecord
    validates :title, :author, :publication_year, :genre, :abstract, presence: true
end
