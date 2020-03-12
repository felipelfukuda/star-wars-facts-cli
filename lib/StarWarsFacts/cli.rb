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
        puts "Hold while your facts are retrieved from a galaxy far, far away..."
        puts "Welcome to StarWars Facts!"
        display_info
    end

    def display_info
        puts "please make a selection:"
        input = gets.strip.downcase
        if input == "jedi"
            puts "============JEDI============"
            puts "list of known jedi"
        elsif input == "sith"
            puts "============SITH============"
            puts "list of known sith"
        else
            puts "try again!"
        end
    end

end