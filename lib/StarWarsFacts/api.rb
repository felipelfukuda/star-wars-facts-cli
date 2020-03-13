#find api to use
#set url
#build hashes for objects
#call custom .new method
#send those back to CLI

class StarWarsFacts::API

    def self.get_people(input)

        @data_hash = HTTParty.get("https://swapi.co/api/people/#{input}/")
        hash_objects = {
        name: @data_hash["name"],
        birth_year: @data_hash["birth_year"],
        gender: @data_hash["gender"],
        hair_color: @data_hash["hair_color"],
        height: @data_hash["height"]
        }
        StarWarsFacts::Info.new(hash_objects)

    end


end