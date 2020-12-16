
class Cli

    def begin 
        puts ""
        puts "Welcome to the Harry Potter Actor CLI! Here you can select a character and see the name of the actor who played them in the films.".neon 
        puts ""
        puts "Please hold while the application loads the data...".neon
        Api.get_data 
        puts ""
        choose_menu
    end

    def choose_menu
        puts "Which character would you like to select?".neon
        puts ""
        list_characters
    end

    def list_characters # displays numbered character list
        Characters.all.each.with_index(1) do |character, index| 
            puts "#{index}. #{character.name}"
        end
        enter_choice
    end

    def get_input
        puts ""
        print "Please enter the number of the character you wish to choose: ".neon
        input = gets.chomp
    end

    def enter_choice
        input = get_input

        if input.to_i.between?(1, Characters.all.length)
            
            index = input.to_i - 1 
            character = Characters.all[index]
            results(character)
        elsif input.downcase == "exit"
            exit_program
        else
            error
        end
    end
    def results(character) 
        puts "#{character.name} is played by #{character.actor}.".green # reads [character] is played by [character] using the data from the api
        puts "Would you like to select another character? Please enter 'yes', 'no', or 'exit'.".neon
        input = gets.chomp
        if input.downcase == "yes"
            choose_menu
        elsif input.downcase == "no"
            exit_program
        elsif input.downcase == "exit"
            exit_program
        else
            error
        end
    end

    def error
        puts "Error--The value you have entered is not valid. Would you like to try again? Please enter 'yes', 'no', or 'exit'.".red
            error_try_again = gets.chomp
            if error_try_again.downcase == "yes"
                choose_menu
            else 
                exit_program
            end
    end

    def exit_program
        puts "Goodbye!".yellow
        exit
    end

end