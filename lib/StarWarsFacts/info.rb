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

    def self.destroy_all
        @@all.clear
    end

    def self.find_by_name(name)
        Info.all.select {|bounty| bounty.name == name}
        binding.pry
    end
    #custom instance methods





end