# your code goes here
class Person
    def initialize (name,bank_account=25, happiness=8, hygiene=8)
    @name=name 
    @bank_account=bank_account
    @happiness=happiness
    @hygiene=hygiene
    end

    attr_accessor :bank_account
    attr_reader :name , :happiness, :hygiene

    def happiness=(value)
        if value <0 
            @happiness=0
        elsif value >10
            @happiness=10
        else @happiness=value
        end
    end

    def hygiene=(value)
        if value <0 
            @hygiene=0
        elsif value >10
            @hygiene=10
        else @hygiene=value
        end
    end

    def happy?
       return true if @happiness > 7
       false
    end

    def clean?
        return true if @hygiene > 7
        false
     end

     def get_paid(salary)
        @bank_account+=salary
        'all about the benjamins'
     end

     def take_bath
        @hygiene+=4
        self.hygiene=(@hygiene)
        '♪ Rub-a-dub just relaxing in the tub ♫'
     end

     def work_out
        @hygiene-=3
        self.hygiene= @hygiene
        @happiness+=2
        self.happiness= @happiness
        '♪ another one bites the dust ♫'
     end

     def call_friend(instance)
        self.happiness= @happiness+3
        instance.happiness=(instance.happiness + 3)
        "Hi #{instance.name}! It's #{self.name}. How are you?"
     end

     def start_conversation(name,topic)
        if topic == "politics"
            self.happiness= @happiness-2
            name.happiness= (name.happiness-2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness= @happiness+1
            name.happiness= (name.happiness+1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
     end
end

