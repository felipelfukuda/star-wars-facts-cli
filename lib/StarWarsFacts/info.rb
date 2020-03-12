class StarWarsFacts::Info

    attr_accessor :name, :birth_year, :gender, :hair_color, :height
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

    #custom instance methods





end