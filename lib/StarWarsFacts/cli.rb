class StarWarsFacts::CLI


    ##THIS WEEKENED:
    ##TAKE COMMON METHODS AND MAKE INTO MODULES
    ##LOOK AT CASE STATEMENTS
    ##LOOK AT IF/ELSIF/ELSE STATMENTS
    ##ADD COLOR TO TITLE AND LOADING SCREENS IF POSSIBLE
    ##GOOD JOB FRANK, IT LOOKS PRETTY GOOD. 2 LEVELS DEEP AND A FUN THEME
    def download
        people_array = [1, 2, 3, 14, 13, 10, 25, 5, 20, 27]
        people_array.map { |index| StarWarsFacts::API.get_people(index) }
        planet_array = [1, 1, 8, 22, 14, 20, 30, 2, 28, 31]
        planet_array.map { |index| StarWarsFacts::API.get_planet(index)}
        start
    end

    def start
        # add color to initial screen text
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "=-=-GALACTIC EMPIRE MOST WANTED FUGITIVES DATABASE-=-="
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts ""
        puts "ID : 1 - Luke Skywalker - CURRENT BOUNTY : 50,000,000 CREDITS" 
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "ID : 2 - C3PO - CURRENT BOUNTY : 5,000,000 CREDITS" 
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "ID : 3 - R2D2 - CURRENT BOUNTY : 10,000,000 CREDITS" 
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "ID : 4 - Han Solo - CURRENT BOUNTY : 25,000,000 CREDITS"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"  
        puts "ID : 5 - Chewbacca - CURRENT BOUNTY : 25,000,000 CREDITS"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-" 
        puts "ID : 6 - Obi Wan Kenobi - CURRENT BOUNTY : 40,000,000 CREDITS"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-" 
        puts "ID : 7 - Lando Calrissian - CURRENT BOUNTY : 10,000,000 CREDITS"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "ID : 8 - Leia Organa - CURRENT BOUNTY : 45,000,000 CREDITS"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-" 
        puts "ID : 9 - Master Yoda - CURRENT BOUNTY : 100,000,000 CREDITS"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-" 
        puts "ID : 10 - General Ackbar - CURRENT BOUNTY : 3,000,000 CREDITS"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-" 
        puts "PLEASE SELECT TARGET ID:"

        input = gets.strip.downcase

        case input
        when "1"
            choice = 1
        when "2"
            choice = 2
        when "3"
            choice = 3
        when "4"
            choice = 4
        when "5"
            choice = 5
        when "6"
            choice = 6
        when "7"
            choice = 7
        when "8"
            choice = 8
        when "9"
            choice = 9
        when "10"
            choice = 10
        when "exit"
            quit
        end


        @people = StarWarsFacts::People.all
        @planets = StarWarsFacts::Planets.all

        display_info(choice)

    end

    
    def display_info(choice)
        @people = StarWarsFacts::People.all[choice.to_i-1]
        process
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
            puts "=-=-=-=-=-=-=    TARGET ID : #{choice}    =-=-=-=-=-=-="
            puts "NAME :: #{@people.name.upcase}"
            puts "BIRTH YEAR :: #{@people.birth_year.upcase}"
            puts "GENDER :: #{@people.gender.upcase}"
            puts "HEIGHT :: #{@people.height.upcase}"
            puts "HAIR COLOR :: #{@people.hair_color.upcase}"
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        process_planet(choice)
        puts "WOULD YOU LIKE TO VIEW ANOTHER BOUNTY?"
        puts "-=-=-=-=-=-=-=-=-=-=Y // N-=-=-=-=-=-=-=-=-=-=-"
        input = gets.strip.downcase
        case input
        when "y"
            start
        when "n"
             n
        when "exit"
            quit
        end

        if input != "exit"
            restart
        elsif input != "n"
            restart
        elsif input != "y"
            restart
        end
    end

    def quit
        puts ""
        puts "PLEASE NOTE:"
        puts ""
        sleep 1
        puts "SHOULD YOU PERISH IN THE ACQUISITION OF A BOUNTY, THE GALACTIC EMPIRE TAKES NO RESPONSIBILITY"
        puts ""
        sleep 1
        puts "AS SUCH, FUNERAL COSTS MUST BE COVERED BY NEXT OF KIN OR INSUROR"
        puts ""
        sleep 1
        puts "THE GALACTIC EMPIRE DOES NOT REIMBURSE ION PARTICLE FUEL USED FOR SPACE TRAVEL"
        puts ""
        sleep 1
        puts "ALL CLAIMS FILED IN REGARDS TO NOTICES ABOVE MAY RESULT IN PERSONAL INJURY "
        puts ""
        sleep 1
        puts "HAPPY HUNTING"
        sleep 1
        puts ""
        exit
    end

    def restart
        puts "INCORRECT INPUT DETECTED!"
        sleep 1
        puts "LOADING MAIN DATABASE......"
        sleep 2
        start
    end

    def process
        sleep 1
        puts "PROCESSING YOUR INQUIRY"
        puts ''
        sleep 2
        puts "LOADING..."
        puts ''
        sleep 2
        puts "LOADING..."
        sleep 2

    end

    def process_planet(choice)
        puts "FOR INFORMATION ON TARGET HOME PLANET PLEASE ENTER 'PLANET'"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "WOULD YOU LIKE TO VIEW ANOTHER BOUNTY?"
        puts "-=-=-=-=-=-=-=-=-=-=Y // N-=-=-=-=-=-=-=-=-=-=-"
        input = gets.strip.downcase
        if input == "planet"
            process
            @planets = StarWarsFacts::Planets.all[choice.to_i-1]
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
            puts "=-=-=-=-=-=-=TARGET PLANET : #{@planets.name.upcase}=-=-=-=-=-=-="
            puts "POPULATION :: #{@planets.population.upcase}"
            puts "CLIMATE :: #{@planets.climate.upcase}"
            puts "TERRAIN :: #{@planets.terrain.upcase}"
            puts "GRAVITY :: #{@planets.gravity.upcase}"
        elsif input == "exit"
            quit
        elsif input == "y"
            start
        elsif input == "n"
            n
        else 
            restart
        end
        
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
    end

    def n 
        puts "UPLOADING BOUNTY TO YOUR TRACKING FOB"
        puts ""
        sleep 1
        puts "UPLOADING..."
        puts ""
        sleep 1
        puts "UPLOADING..."
        puts ""
        sleep 1
        puts "UPLOAD COMPLETE!"
        puts ""
        sleep 1
        puts "IF SUCCESSFUL PLEASE RETRIEVE BOUNTY AT NEAREST GALACTIC EMPIRE OUTPOST"
        puts ""
        sleep 1
        puts "THE GALACTIC EMPIRE IS NOT LIABLE FOR YOUR SAFETY AND CLAIMS NO RESPONSIBILITY SHOULD YOU SUFFER DEATH OR INJURY"
        puts ""
        sleep 1
        puts "HAPPY HUNTING"
        exit
    end
end