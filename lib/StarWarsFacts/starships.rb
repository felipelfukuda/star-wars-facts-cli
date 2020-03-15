class StarWarsFacts::Starships

    attr_accessor :name, :model, :max_atmosphering_speed, :starship_class, :crew

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


    def self.find_by_name(name)
        Starships.all.select {|bounty| bounty.name == name}
    end
    #custom instance methods





end