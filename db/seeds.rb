FavoriteFilm.destroy_all
Film.destroy_all
User.destroy_all


require 'pry'

url = 'https://ghibliapi.herokuapp.com/films'
response = RestClient.get(url)
films = JSON.parse(response)

films.each do |film|
    Film.create(
        title: film["title"],
        description: film["description"],
        director: film["director"],
        producer: film["producer"],
        release_date: film["release_date"],
        rt_score: film["rt_score"]
    )
end


binding.pry
0
