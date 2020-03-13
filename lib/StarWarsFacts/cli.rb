class StarWarsFacts::CLI





    def start
        #how to get input to search for the proper person on SWAPI??
        #case input (input = gets.strip.to_i)
        #when 1 input = however we get to people/1 (luke)
        #when 2 input = however we get to people/4 (han solo)
        #etc.
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
        @data = StarWarsFacts::API.get_people(input)
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
            binding.pry
        puts "WOULD YOU LIKE TO VIEW ANOTHER BOUNTY?"
        puts "--------Y/N?------------"
        input = gets.strip.downcase
        if input == "y"
            start
        elsif input == "n"
            puts "UPLOADING BOUNTY TO YOUR TRACKING FOB"
            sleep 1
            puts "UPLOADING..."
            sleep 1
            puts "UPLOADING..."
            sleep 1
            puts "UPLOAD COMPLETE!"
            sleep 1
            puts "GOODBYE AND HAPPY HUNTING"
            sleep 1
            exit
        end
        end
      
    end



end