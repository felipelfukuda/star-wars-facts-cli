#find api to use
#set url
#build hashes for objects
#call custom .new method
#send those back to CLI

class StarWarsFacts::API

    def self.get_people(input)

        @data_hash = HTTParty.get("https://swapi.co/api/people/#{input}/")
        people_hash = {
        name: @data_hash["name"],
        birth_year: @data_hash["birth_year"],
        gender: @data_hash["gender"],
        hair_color: @data_hash["hair_color"],
        height: @data_hash["height"]
        }
        StarWarsFacts::People.new(people_hash)
    end

    def self.get_planet(input)

        @data_hash = HTTParty.get("https://swapi.co/api/planets/#{input}/")
        planet_hash = {
        name: @data_hash["name"],
        terrain: @data_hash["terrain"],
        climate: @data_hash["climate"],
        population: @data_hash["population"],
        gravity: @data_hash["gravity"]
        }
        StarWarsFacts::Planets.new(planet_hash)
    end

end