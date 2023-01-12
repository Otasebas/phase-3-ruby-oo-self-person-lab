class Person
    ##set name once
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
  
    ##initialization 
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
      end

    ##specific setter
    def happiness=(value)
        @happiness=
        if value>10
            10
        elsif value<0
            0
        else
            value
        end
    end

    ##specific setter
    def hygiene=(value)
        @hygiene=
        if value>10
            10
        elsif value<0
            0
        else
            value
        end
    end

    ##check if clean
    def clean?
        @hygiene > 7 ? true : false
    end

    ##check if happy
    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account = @bank_account+amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @hygiene -= 3

        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)

        self.happiness += 3
        friend.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end