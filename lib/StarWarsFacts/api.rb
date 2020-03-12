#find api to use
#set url
#build hashes for objects
#call custom .new method
#send those back to CLI

class StarWarsFacts::API

    def self.get_data
        @data_hash = HTTParty.get("https://swapi.co/api/people/1/")
        binding.pry

    end


end