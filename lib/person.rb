class Person
    
    attr_reader :name
    attr_writer
    attr_accessor :bank_account, :happiness, :hygiene


    def initialize(name)
        @name = name
        @bank_account = 25
        
        if @happiness = ''
            @happiness = 8
            @hygiene = 8
        end
    end

    def happiness=(happy)
        if happy < 0
           return @happiness = 0
        elsif happy > 10
            return @happiness = 10
        else
            return @happiness = happy
        end
    end
    def hygiene=(hygiene)
        if hygiene < 0
           return @hygiene = 0
        elsif hygiene > 10
            return @hygiene = 10
        else
            return @hygiene = hygiene
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene+4)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene-3)
        self.happiness=(@happiness+2)
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness=(@happiness+3)
        friend.happiness=(friend.happiness+3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness=(@happiness-2)
            friend.happiness=(friend.happiness-2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness=(@happiness+1)
            friend.happiness=(friend.happiness+1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end