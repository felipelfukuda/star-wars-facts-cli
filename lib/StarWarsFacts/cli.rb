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
        puts "Welcome to StarWars Facts!"
        puts "Hold while your facts are retrieved from a galaxy far, far away..."
        # @data = StarWarsFacts::Api.get_data (api.rb method )
        # @objects = StarWarsFacts::Info.all (info.rb class method)
        display_info
    end

    def display_info
        puts "please make a selection:"
        #right here would go:
        #@objects.each.with_index(1) {|obj| puts "#{index}. #{obj.name} - #{obj.age}"
        #to display my list of objects to make a choice, depending on choices and attributes i represent
        input = gets.strip.downcase
        if input == "1"
            puts "============movies============"
            puts "list of known jedi"
            #1 obi wan
            #2 anakin skywalker
            #3 mace windu
            # 4 yoda
            display_info
        elsif input == "locations"
            puts "============locations============"
            puts "list of known sith"
            #1 emperor palpatine
            #2 darth vader
            #3 emperor snoke
            #4 kylo ren
            display_info
        else
            quit
        end
    end

    def quit
        puts "goodbye"
    end

end