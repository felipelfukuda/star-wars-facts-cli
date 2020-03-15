class StarWarsFacts::CLI


    ##THIS WEEKENED:  
    ##ADD COLOR TO TITLE AND LOADING SCREENS

    def download
        people_array = [1, 2, 3, 14, 13, 10, 25, 5, 20, 27]
        people_array.map { |index| StarWarsFacts::API.get_people(index) }
        planet_array = [1, 1, 8, 22, 14, 20, 30, 2, 28, 31]
        planet_array.map { |index| StarWarsFacts::API.get_planet(index)}
        starship_array = [10, 12]
        starship_array.map { |index| StarWarsFacts::API.get_starship(index)}
        start
    end

    def start
        title_screen
        input = gets.strip.downcase
        if input == "f"
            fugitive_menu
        elsif input == "s"
            starship_menu
        elsif input == "exit"
            quit
        else
            restart
        end
    end

    
    def display_people(choice)
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
         display_planet(choice)

    end




    def display_planet(choice)
        puts "FOR INFORMATION ON TARGET HOME PLANET PLEASE ENTER 'P'"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "TO VIEW ANOTHER BOUNTY : 'Y'"
        puts "TO UPLOAD BOUNTY TO YOUR TRACKING FOB : 'N'"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "TO EXIT DATABASE PLEASE ENTER 'EXIT'"
        input = gets.strip.downcase
        if input == "p"
            process
            @planets = StarWarsFacts::Planets.all[choice.to_i-1]
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
            puts "=-=-=-=-=-=-TARGET PLANET : #{@planets.name.upcase}-=-=-=-=-=-="
            puts "POPULATION :: #{@planets.population.upcase}"
            puts "CLIMATE :: #{@planets.climate.upcase}"
            puts "TERRAIN :: #{@planets.terrain.upcase}"
            puts "GRAVITY :: #{@planets.gravity.upcase}"
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        elsif input == "exit"
            quit
        elsif input == "y"
            start
        elsif input == "n"
            upload
        else 
            restart
        end
        puts "TO VIEW ANOTHER BOUNTY : 'Y'"
        puts "TO UPLOAD BOUNTY TO YOUR TRACKING FOB : 'N'"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "TO EXIT DATABASE PLEASE ENTER 'EXIT'"
        input = gets.strip.downcase
        case input
        when "exit"
            quit
        when "y"
            start
        when "n"
            upload
        else
            restart
        end
    end

    def fugitive_menu
        process
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "=-=-GALACTIC EMPIRE MOST WANTED FUGITIVES DATABASE-=-="
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts ""
        StarWarsFacts::People.all.each.with_index(1) do |people, index|
            puts "ID : #{index} - #{people.name.upcase} - CURRENT BOUNTY : #{rand(10000000..50000000)} CREDITS"
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        end
        puts "TO EXIT DATABASE PLEASE ENTER 'EXIT'"
        puts "          OR             "
        puts "PLEASE SELECT TARGET ID:"
        input = gets.strip.downcase
        if ("1".."10").include?(input)
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
                end
        elsif input == "exit"
            quit
        else
            restart
        end

        display_people(choice)
    end

    def starship_menu
        process
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "=-=-GALACTIC EMPIRE MOST WANTED STARSHIPS DATABASE-=-="
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts ""
        StarWarsFacts::Starships.all.each.with_index(1) do |starships, index|
            puts "ID : #{index} - #{starships.name.upcase} - CURRENT BOUNTY : #{rand(5000000..30000000)} CREDITS"
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        end
        puts "TO EXIT DATABASE PLEASE ENTER 'EXIT'"
        puts "          OR             "
        puts "PLEASE SELECT TARGET ID:"
        input = gets.strip.downcase
        if ("1".."10").include?(input)
            case input
                when "1"
                    choice = 1
                when "2"
                    choice = 2
                end
            elsif input == "exit"
                quit
            else
                restart
            end
        display_starship(choice)
    end

    def display_starship(choice)
        @starships = StarWarsFacts::Starships.all[choice.to_i-1]
        process
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "=-=-=-=-=-=-=    TARGET ID : #{choice}    =-=-=-=-=-=-="
        puts "NAME :: #{@starships.name.upcase}"
        puts "MODEL :: #{@starships.model.upcase}"
        puts "STARSHIP CLASS :: #{@starships.starship_class.upcase}"
        puts "CREW :: #{@starships.crew.upcase}"
        puts "MAX ATMOSPHERING SPEED :: #{@starships.max_atmosphering_speed.upcase}"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "TO VIEW ANOTHER BOUNTY : 'Y'"
        puts "TO UPLOAD BOUNTY TO YOUR TRACKING FOB : 'N'"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "TO EXIT DATABASE PLEASE ENTER 'EXIT'"
        input = gets.strip.downcase
        case input
        when "exit"
            quit
        when "y"
            start
        when "n"
            upload
        else
            restart
        end
    end


    def title_screen
        puts Rainbow("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-").red
        puts Rainbow("=-=-=-=-").red + Rainbow("GALACTIC EMPIRE MOST WANTED DATABASE").white + Rainbow("-=-=-=-=-=").red
        puts Rainbow("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-").red
        puts ""
        puts "TO BROWSE MOST WANTED STARSHIPS : 'S'"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "TO BROWSE MOST WANTED FUGITIVES : 'F'" 
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
        puts "TO EXIT DATABASE PLEASE ENTER 'EXIT'"
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
    end

    def upload
        sleep 1
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


    def process
        sleep 1
        puts "PROCESSING YOUR INQUIRY"
        puts ''
        sleep 1
        puts "LOADING..."
        puts ''
        sleep 1
        puts "LOADING..."
        sleep 1

    end

    def restart
        sleep 1
        puts "INCORRECT INPUT DETECTED!"
        sleep 1
        puts "LOADING MAIN DATABASE......"
        sleep 1
        start
    end

    def quit
        sleep 1
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

end