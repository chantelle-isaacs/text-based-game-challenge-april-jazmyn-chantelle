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
          puts story_pt3= Block3.new("Find coconuts.","find shelter.","follow animal tracks.","dig yourself a grave.")
          puts story_pt3.get_story
          puts story_pt3.get_choices
        elsif answer == 3
            puts story_pt4= Block4.new("run away.","fight.","powers of persuasion.","become soup.")
            puts story_pt4.get_story
            puts story_pt4.get_choices
        else
            puts "Pick a number between 1-4"
            puts get_choices
        end
    end
end

class Block3<Block1
    def initialize(choice1, choice2, choice3, choice4)
        super(choice1, choice2, choice3, choice4)
    end

    def get_story
        @story = "-- story 3 - you find a stream now what..."
    end

    def end_story(answer)
        endings = {
            4 => "-- Die - dig yourself a grave"
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
        elsif answer == 1 || answer == 2 || answer == 3
            puts story_pt4= Block4.new("run away.","fight.","powers of persuasion.","become soup.")
            puts story_pt4.get_story
            puts story_pt4.get_choices
        else
            puts "Pick a number between 1-4"
            puts get_choices
        end
    end
end

class Block4<Block1
    def initialize(choice1, choice2, choice3, choice4)
        super(choice1, choice2, choice3, choice4)
    end

    def get_story
        @story = "-- story 4 - you find a canibal village now what..."
    end

    def end_story(answer)
        endings = {
            1 => "-- Die - trip on rock as you run away and get eaten",
            2 => "-- Die - they have spears you dont. dummy.",
            4 => "-- Die - you are eaten by cannibals"
        }
        puts endings[answer]
        puts "\nTRY AGAIN\n -------------"
        get_story
        get_choices
    end

    def get_choices
        puts [@choice1, @choice2, @choice3, @choice4]
        answer = gets.chomp.to_i
        if answer == 1 || answer == 2 || answer == 4
            end_story (answer)
        elsif answer == 3
          puts story_pt5= Block5.new("baby shark.","swaetin bullets.","danny boy.","the greatest song ever written.")
          puts story_pt5.get_story
          puts story_pt5.get_choices
        else
            puts "Pick a number between 1-4"
            puts get_choices
        end
    end
end

class Block5<Block1
    def initialize(choice1, choice2, choice3, choice4)
        super(choice1, choice2, choice3, choice4)
    end

    def get_story
        @story = "-- story 5 - you sing to the cannibals..."
    end

    def end_story(answer)
        endings = {
            3 => "-- Die - you depressed cannibals with your ugly sad song"
        }
        puts endings[answer]
        puts "\nTRY AGAIN\n -------------"
        get_story
        get_choices
    end

    def get_choices
        puts [@choice1, @choice2, @choice3, @choice4]
        answer = gets.chomp.to_i
        if answer == 3
            end_story (answer)
        elsif answer == 1 || answer == 2
            puts story_pt6= Block6.new("kill everyone.","run away.","sing louder.","think they're mocking you.")
            puts story_pt6.get_story
            puts story_pt6.get_choices
        elsif answer == 4
            puts "rick roll -> become cannibal king - winning text"
            puts get_choices
        else
          puts "Pick a number between 1-4"
          puts get_choices
        end
    end
end

class Block6<Block1
    def initialize(choice1, choice2, choice3, choice4)
        super(choice1, choice2, choice3, choice4)
    end

    def get_story
        @story = "-- story 6 - music sooths the soul, escaper becomes king..."
    end

    def end_story(answer)
        endings = {
            1 => "-- Die - try to kill them all but they see you, dummy",
            4 => "-- Die - they werent mocking your music and are mad that you stopped singing"
        }
        puts endings[answer]
        puts "\nTRY AGAIN\n -------------"
        get_story
        get_choices
    end

    def get_choices
        puts [@choice1, @choice2, @choice3, @choice4]
        answer = gets.chomp.to_i
        if answer == 1 || answer == 4
            end_story (answer)
        elsif answer == 2
            puts "run away and escape to helicopter ->winning text"
        elsif answer == 3
            puts "singing louder become cannibal king -> winning text"
        else
          puts "Pick a number between 1-4"
          puts get_choices
        end
    end
end





start_story = Block1.new("Go look for water","Go fishing for food","Start building a shelter","Lay in sand, wallowing in your sadness and despair")
start_story.get_story
start_story.get_choices
