class StarWarsFacts::Planets

    attr_accessor :name, :gravity, :terrain, :population, :climate
    @@all = []
    def initialize(hash)
        hash.each { |key, value| self.send("#{key}=", value)}
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

end