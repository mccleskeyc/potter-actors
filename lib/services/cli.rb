
class Cli

    def begin #starts our program, is called upon in run
        puts ""
        puts "Welcome to the Harry Potter Actor API! Here you can select a character and see the name of the actor who played them in the films." # greets user
        puts "Please hold while the application loads the data..."
        Api.get_data # loads in the data
        puts ""
        choose_menu
    end

    def choose_menu
        puts "Which character would you like to select?"
        list_characters
    end

    def list_characters
        Characters.all.each.with_index(1) do |character, index|
            puts "#{index}. #{character.name}"
        end
        enter_choice
    end

    def enter_input
        print "Please enter the number of the character you wish to choose: "
        input = gets.chomp
        input
    end

    def enter_choice
        input = enter_input

        if input.to_i.between?(1, Characters.all.length)
            
            index = input.to_i - 1
            character = Characters.all[index]
            results(character)
        elsif input == "exit"
            exit
        else
            error
        end
    end


    def results(character)
        puts "#{character.name} is played by #{character.actor}."
        puts "Would you like to select another character?"
        input = gets.chomp
        if input.downcase == "yes"
            choose_menu
        elsif input.downcase == "no"
            exit
        else
            error
        end
    end

    def error
        puts "Error--The value you have entered is not valid. Would you like to try again?"
            error_try_again = gets.chomp
            if error_try_again.downcase == "yes"
                enter_input
            else 
                exit
            end
    end

end