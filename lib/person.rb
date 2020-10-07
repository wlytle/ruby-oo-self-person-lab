# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
    
        if happiness > 10
            @happiness = 10
        elsif happiness < 0 
            @happiness = 0
        else
            @happiness = happiness
        end
    end
    
        #     binding.pry
    #     case happiness
    #     when happiness > 10
    #         @happiness = 10
    #     when happiness < 0
    #         @happiness = 0
    #     else
    #         @happiness = happiness 
    #     end
    # end

    def hygiene=(hygiene)
        #binding.pry
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0 
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end


    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end



# kevin = Person.new("kevin")
# binding.pry