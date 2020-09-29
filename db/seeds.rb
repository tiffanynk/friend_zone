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
        rt_score: film["rt_score"],
        people: film["people"]
    )
end


binding.pry
0
