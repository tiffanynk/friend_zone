class User < ActiveRecord::Base
    has_many :favorite_films
    has_many :films, through: :favorite_films
end