class StarWarsFacts::CLI



    def download
        people_array = [1, 2, 3, 14, 13, 10, 25, 5, 20, 27]
        people_array.map { |index| StarWarsFacts::API.get_people(index) }
        planet_array = [1, 1, 8, 22, 14, 20, 30, 2, 28, 31]
        planet_array.map { |index| StarWarsFacts::API.get_planet(index)}
        start
    end

    def start
        # full_array = [1, 2, 3, 14, 13, 10, 25, 5, 20, 27]
        # StarWarsFacts::API.get_people(full_array)
        puts "----GALACTIC EMPIRE MOST WANTED FUGITIVES DATABASE----"
        puts "Please choose 1-10:"
        puts "1. Luke Skywalker" #people/1
        puts "2. C3PO" #people/2
        puts "3. R2D2" #people/3
        puts "4. Han Solo"  #people/14/
        puts "5. Chewbacca" #people/13/
        puts "6. Obi Wan Kenobi" #people/10/
        puts "7. Lando Calrissian" #people/25/
        puts "8. Leia Organa" #people/5/
        puts "9. Master Yoda" #people/20/
        puts "10. General Ackbar" #people/27/

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
        binding.pry

        display_info(choice)

    end

    #problem where the second input after "Y" will display information from the same choice as the first time
    def display_info(choice)
        @people = StarWarsFacts::People.all[choice.to_i-1]
        process
            puts "NAME :: #{@objects.name.upcase}"
            puts "BIRTH YEAR :: #{@objects.birth_year.upcase}"
            puts "GENDER :: #{@objects.gender.upcase}"
            puts "HEIGHT :: #{@objects.height.upcase}"
            puts "HAIR COLOR :: #{@objects.hair_color.upcase}"
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
            puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "WOULD YOU LIKE TO VIEW ANOTHER BOUNTY?"
        puts "-=-=-=-=-=-=-=-=-=-=Y // N-=-=-=-=-=-=-=-=-=-=-"
        input = gets.strip.downcase
        case input
        when "y"
            start
        when "n"
            puts "UPLOADING BOUNTY TO YOUR TRACKING FOB"
            sleep 1
            puts "UPLOADING..."
            sleep 1
            puts "UPLOADING..."
            sleep 1
            puts "UPLOAD COMPLETE!"
            sleep 1
            puts "IF SUCCESSFUL PLEASE RETRIEVE BOUNTY AT NEAREST GALACTIC EMPIRE OUTPOST"
            sleep 1
            puts "THE GALACTIC EMPIRE IS NOT LIABLE FOR YOUR SAFETY AND CLAIMS NO RESPONSIBILITY SHOULD YOU PERISH"
            sleep 1
            puts "HAPPY HUNTING"
            exit
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
        puts "THE GALACTIC EMPIRE IS NOT LIABLE FOR YOUR SAFETY AND CLAIMS NO RESPONSIBILITY SHOULD YOU PERISH"
        sleep 1
        puts "HAPPY HUNTING"
        sleep 1
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
        puts "=-=-=-=-=-=-PROCESSING YOUR INQUIRY-=-=-=-=-=-="
        puts "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
        puts "Here is the information on the bounty requested:"
    end

end