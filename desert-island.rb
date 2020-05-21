# will you become the cannibal king??
class Block1
    def initialize (choice1, choice2, choice3, choice4)
        @story = "-- You were on your way to a Carribean vacation, when your plane suddenly crashes in the Burmuda Triangle. \n-- You are the only survior.\n-- You somehow manage to swim out of the wreckage and to a nearby deserted island.\n-- You wake up on the sand, shocked you're still alive. \n-- You know you have to do something... \n(Pick a number between 1 - 4)"
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
            2 => "-- You attempt to make a net out of your clothes and go fishing for food. \n-- This does not work out well... \n-- A shark appears and bites off your leg. \n-- You can't swim away fast enough... \n-- You die.",
            3 => "-- You attempt to find some branches and palm fronds to protect yourself from the blazing sun.\n-- As you struggle through the underbrush, you trip. \n-- You fall and impale yourself on a sharp stump. \n-- You die.",
            4 => "-- You think long and hard about your situation. \n-- It seems helpless and so you decide to just give up. \n-- You sit in the sand, and let the waves wash up around you. \n-- You die."
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
            story_pt2= Block2.new("Head up hill looking for water.","Head down hill looking for water.","Keep crashing through the brush hoping you stumble across something.","Give up and drink ocean water.")
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
            4 => "-- You think to yourself, this water searching nonsense is so dumb where there's a whole ocean in front of me that I could drink. \n-- You gulp down mouthfuls of salty ocean water, and it only makes you thirstier. \n--You die."
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
            story_pt3= Block3.new("You think you saw some coconuts back the way you came...","You thought there was a nice grove of palm trees you could turn into a shelter, let’s go back there...","You saw some animal tracks! Let’s see where they lead...","Dig yourself a grave - there’s no way you’re getting out of this alive...")
            puts story_pt3.get_story
            puts story_pt3.get_choices
        elsif answer == 3
            story_pt4= Block4.new("Run away.","Raise your fists to fight them off.","Use your powers of persuasion and charm.","Surrender to the fact you know you’ll be a mighty tasty soup.")
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
        @story = "-- You carefully push your way through the brush until the dirt beneath your feet feels moist. \n-- You break into a clearing with a beautiful fresh water stream running through it! \n-- You dive in, drinking your fill. \n-- You are now hydrated and can plan your next move..."
    end

    def end_story(answer)
        endings = {
            4 => "-- You think to yourself, cool... I found water, but I don't think anyone will ever come looking for me. \n-- You decide preparedness is the best thing, so you start digging yourself a grave. \n-- While you dig, you go too deep and teh hole colapses on you, crushing you. \n--You die."
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
            story_pt4= Block4.new("Run away.","Raise your fists to fight them off.","Use your powers of persuasion and charm.","Surrender to the fact you know you’ll be a mighty tasty soup.")
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
        @story = "-- You crash through the brush and find a village! \n-- Your spirits rise until you see all the skulls on the spears surrounding the huts. \n-- Your heart drops into the pit of your stomach as all eyes turn on you. \n-- No slinking away now. "
    end

    def end_story(answer)
        endings = {
            1 => "-- You try to run away, but immediately trip over a rock and fall on your face. \n-- Before you can even think about it, you have spears in your face. \n-- You die",
            2 => "-- You put on a brave face and look tough and intimidating.\n-- Little do you know an archer outside your peripheral vision already has an arrow set in his bow.\n-- You die",
            4 => "-- You allow yourself to be tied up and carried to the giant pot sitting over the fire in the center of the village.\n The hot water feels relaxing at first... but guess what.\n-- You die"
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
          story_pt5= Block5.new("Baby Shark","Eye of the Tiger","Danny Boy","The GREATEST song ever written")
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
        @story = "-- You bat your eyes and talk sweetly to the savages.\n-- Their looks of surprise and anger turn to ones of confusion and fascination.\n-- You gotta keep this up. \n-- You decide to entrance them further with a song. \n-- Your mom always told you you had a beautiful voice...\n-- What song do you want to sing?"
    end

    def end_story(answer)
        endings = {
            3 => "-- You open your mouth and start to sing... \n-----Oh Danny boyyyyyyyyy\n-----The pipes, THE PIPES are caaaaalllinggggg  \n-- You look out at your audience, believing they'll be enraptured by your dulcet tones. \n-- Unfortunately, your audience is less than impressed.\n-- Too late, you see a warrior grab a spear and throw it right at your face.\n-- You die."
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
            story_pt6= Block6.new("This is your chance - Kill everyone!","This is your chance - Run away!!!","Sing LOUDER!","Realize their singing along is actually them mocking you... and stop singing.")
            puts story_pt6.get_story
            puts story_pt6.get_choices
        elsif answer == 4
            puts "-- You open your mouth and start to sing... \n \n----- We're no strangers to love\n----- You know the rules and so do I\n----- A full commitment's what I'm thinking of\n----- You wouldn't get this from any other guy \n \n-- You look out at your audience, who are entirely entranced by the sounds coming from your vocal chords.\n-- They begin to dance \n \n----- I just wanna tell you how I'm feeling\n----- Gotta make you understand\n \n-- As the crescendo of the chorus rises, they strip the crown off the biggest man in the center of the village, and place it on your head. \n \n-----Never gonna give you up\n-----Never gonna let you down\n-----Never gonna run around and desert you\n-----Never gonna make you cry\n-----Never gonna say goodbye\n-----Never gonna tell a lie and hurt you\n \n-- You somehow have earned their respect and your way off the menu. \n-- Not only that, but you seem to have sung your way to the top! \n-- You are the Cannibal King! \n*-*-* YOU WIN *-*-*\n"
            # play again block goes here
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
        @story = "-- The cannibals love your musical taste and start moving to the beat. \n-- Someone finds some drums and they start adding some percussion to the sounds coming out of your mouth. \n-- People start mimicking your words and they pick up the chorus surprisingly well and sing along. \n-- Soon enough, the whole village has joined the infectious singing and dancing and everyone is having a great time."
    end

    def end_story(answer)
        endings = {
            1 => "-- You grab one of the spears leaning against a nearby hut.\n-- As soon as your hand is on it, somone very big and very strong grabs you by the neck of your shirt. \n-- Well, that was a bad idea...\n-- You die.",
            4 => "-- Your voice trails off as you feel embarrased by your vocals.\n-- You did not expect them to be so angry about the ending of the music! \n-- They take personal offence to you stopping and start shouting at you. \n-- Next thing you know, you're tied to a stake over a fire with an apple in your mouth. \n-- You die."
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
            puts "--The music distracted the village enough that you were able to slip away unseen. \n-- You run back toward the beach.\n-- As you get closer you hear a roaring sound.\n-- You break through the last branches and sand flies in your face from a helicopter that has landed on the beach.\n-- You’re saved!\n-- You run to the chopper and Michael B. Jordan, Ryan Reynolds, and Chris Pratt are all there there with grapes and a cheese platter.\n-- This whole ordeal didn’t turn out so bad after all..."
        elsif answer == 3
            puts "--Your music impresses them so highly, they strip the crown off the biggest man in the center of the village, and place it on your head. \n-- You somehow have earned their respect and your way off the menu. \n-- Not only that, but you seem to have sung your way to the top! \n-- You are the Cannibal King! \n*-*-* YOU WIN *-*-*\n"
            # start game over prompt
        else
          puts "Pick a number between 1-4"
          puts get_choices
        end
    end
end





start_story = Block1.new("Go look for water","Go fishing for food","Start building a shelter","Lay in sand, wallowing in your sadness and despair")
start_story.get_story
start_story.get_choices
