# will you become the cannibal king??
class Block1
    def initialize (choice1, choice2, choice3, choice4)
        @story = "-- You were on your way to a Carribean vacation, when your plane2 suddenly crashes in the Burmuda Triangle. \n -- You are the only survior.\n -- You somehow manage to swim out of the wreckage and to a nearby deserted island.\n -- You wake up on the sand, shocked you're still alive. \n -- You know you have to do something... \n (Pick a number between 1 - 4)"
        @choice1 = "1: #{choice1}"
        @choice2 = "2: #{choice2}"
        @choice3 = "3: #{choice3}"
        @choice4 = "4: #{choice4}"
    end

    def get_story
        puts @story
    end

    
    def end_story (answer)
        endings = {
            2 => "-- You attempt to make a net out of your clothes and go fishing for food. \n -- This does not work out well... \n -- A shark appears and bites off your leg. \n -- You can't swim away fast enough... \n -- You die.",
            3 => "-- You attempt to find some branches and palm fronds to protect yourself from the blazing sun.\n -- As you struggle through the underbrush, you trip. \n -- You fall and impale yourself on a sharp stump. \n -- You die.",
            4 => "-- You think long and hard about your situation. \n -- It seems helpless and so you decide to just give up. \n -- You sit in the sand, and let the waves wash up around you. \n -- You die."
        }
        puts endings[answer]
        puts "\nTRY AGAIN\n -------------"
        get_choices
    end
    
    def get_choices
        puts [@choice1, @choice2, @choice3, @choice4]
        answer = gets.chomp.to_i
        if answer == 2 || answer == 3 || answer == 4
            end_story(answer)
        elsif answer == 1
            puts story_pt2= Block2.new("Head up hill looking for water.","Head down hill looking for water.","Keep crashing through the brush hoping you stumble across something.","Give up and drink ocean water.")
            puts story_pt2.get_story
            puts story_pt2.get_choices
        else
            puts "Pick a number between 1-4"
            puts get_choices
        end
    end
end

class Block2<Block1
    def initialize(choice1, choice2, choice3, choice4)
        super(choice1, choice2, choice3, choice4)
    end

    def get_story
        @story = "-- You trudge through the brush looking for water. \n-- You have no idea where you are but the plants around you mean there MUST be water somewhere..."
    end

    def end_story(answer)
        endings = {
            4 => "-- Die - drink ocean water"
        }
        puts endings[answer]
        puts "\nTRY AGAIN\n -------------"
        get_story
        get_choices
    end

    def get_choices
        puts [@choice1, @choice2, @choice3, @choice4]
        answer = gets.chomp.to_i
        if answer == 4
            end_story (answer)
        elsif answer == 1 || answer == 2
            puts "you find water -> Block3"
        elsif answer == 3
            puts "find the cannibals -> Block4"
        else
            puts "Pick a number between 1-4"
            puts get_choices
        end
    end
end






start_story = Block1.new("Go look for water","Go fishing for food","Start building a shelter","Lay in sand, wallowing in your sadness and despair")
start_story.get_story
start_story.get_choices