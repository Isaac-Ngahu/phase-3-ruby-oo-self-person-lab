# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name,bank_account= 25,happiness=8,hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness=(happiness)
        if happiness <= 10 && happiness >= 0
            @happiness = happiness
        elsif happiness > 10
            @happiness =10
        elsif happiness <0
            @happiness = 0
        else
            "cannot set happiness above 10"
        end
    end
    def hygiene=(hygiene)
    if hygiene <= 10 && hygiene >= 0
        @hygiene = hygiene
    elsif hygiene > 10
        @hygiene = 10
    elsif hygiene < 0
        @hygiene = 0
    else
        "cannot set hygiene above 10"
    end
    end
    def happy?
      if @happiness > 7
        true
      else
        false
      end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        new_hygiene = @hygiene + 4
        self.hygiene = new_hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        new_happiness = @happiness+2
        new_hygiene = @hygiene-3
        self.happiness=new_happiness
        self.hygiene = new_hygiene
        "♪ another one bites the dust ♫"
    end
    def call_friend(name)
        friend = Person.new(name)
        friends_happiness = 5
        puts friend.happiness = friends_happiness+3
        new_happiness = @happiness+3
        self.happiness = new_happiness
        "Hi Felix! It's Stella. How are you?"
    end
end
Stella = Person.new("Stella")
Stella.call_friend("Felix")
