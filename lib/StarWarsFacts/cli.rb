class StarWarsFacts::CLI





    def start
        puts "----GALACTIC EMPIRE MOST WANTED FUGITIVES DATABASE----"
        puts "Please choose 1-9:"
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
            choice = 14
        when "5"
            choice = 13
        when "6"
            choice = 10
        when "7"
            choice = 25
        when "8"
            choice = 5
        when "9"
            choice = 20
        when "10"
            choice = 27
        when "exit"
            quit
        end
        @data = StarWarsFacts::API.get_people(choice)
        @objects = StarWarsFacts::Info.all
        display_info

    end

    #problem where the second input after "Y" will display information from the same choice as the first time
    def display_info
        puts "----------PROCESSING YOUR INQUIRY----------"
        puts "--------------------------------------------"
        puts "Here are the specifications on ..... #{@data.name}"
        @objects.each do |subject|
            puts "NAME :: #{subject.name.upcase}"
            puts "BIRTH YEAR :: #{subject.birth_year.upcase}"
            puts "GENDER :: #{subject.gender.upcase}"
            puts "HEIGHT :: #{subject.height.upcase}"
            puts "HAIR COLOR :: #{subject.hair_color.upcase}"
        puts "WOULD YOU LIKE TO VIEW ANOTHER BOUNTY?"
        puts "--------Y/N?------------"
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


end