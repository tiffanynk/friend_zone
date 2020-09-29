class Film < ActiveRecord::Base
    has_many :favorite_films
    has_many :users, through: :favorite_films
end