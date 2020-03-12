class StarWarsFacts::CLI


    #start should greet user and describe ap
    #get data from API
    #create new custom objects
    #all inside start method

    # deals with inputs (create a loop that keeps asking for info)
    #EX. while input != "exit" do "whatever" check MUSIC CLI for Case/when examble
    #gives a list of acceptable commands
    # gets user input
    #depending on what input, it reacts appropriately
    #condition to check input for true value
    #else say "choose correct input" or something

    #exit command
    #if input == "exit" 
    #says "good bye!"
    #kills program




    def start
        puts "Welcome to StarWars Character Facts!"
        puts "Please choose 1-9:"
        puts "1. Luke Skywalker"
        puts "2. C3PO"
        puts "3. R2D2"
        input = gets.strip.downcase
        # case gets.strip.downcase
        # when 'people'
        #     choice == "1"
        # when 'planets'
        #     choice == "2"
        # when 'starships'
        #     choice == "3"
        # end
        # @data = StarWarsFacts::Api.get_data (api.rb method )
        # @objects = StarWarsFacts::Info.all (info.rb class method)
        @data = StarWarsFacts::API.get_people(input)
        @objects = StarWarsFacts::Info.all
        display_info
    end

  
    def display_info
        puts "----------GALACTIC REPUBLIC DATABASE----------"
        puts "-----------------------------------------------"
        puts "Here are the specifications on ..... #{@data.name}"
        @objects.each do |key|
            puts "#{key.name}"
        binding.pry
        end
        #right here would go:
        #@objects.each.with_index(1) {|obj| puts "#{index}. #{obj.name} - #{obj.age}"
        #to display my list of objects to make a choice, depending on choices and attributes i represent
      
    end

    def quit
        puts "goodbye"
    end

end