class Person
    attr_accessor :bank_account, :happiness, :hygiene #2
    attr_reader :name #1

    def initialize (name) #4
       @name = name #3
       @bank_account = 25
       @happiness = 8
       @hygiene = 8
    end

    def happiness=(num) #5
        @happiness = num #6
        @happiness = 10 if @happiness>10 #7
        @happiness =0 if @happiness<0 #8
    end

    def hygiene=(num) #5
        @hygiene = num #6
        @hygiene = 10 if @hygiene>10 #7
        @hygiene = 0 if @hygiene<0 #8
    end
    
    def happy? #9
        happiness >7
    end

    def clean? #9
        hygiene >7
    end
    
    def get_paid(salary) #11
        self.bank_account += salary 
       "all about the benjamins"
    end

    def take_bath #11
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out #11
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend_you_are_calling) #12 
        people_in_conversation = [friend_you_are_calling,self]
        people_in_conversation.each {|person| person.happiness+=3}
        "Hi #{friend_you_are_calling.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation (friend_you_are_calling, topic_of_conversation)
        people_in_conversation = [friend_you_are_calling,self]
        if topic_of_conversation == "politics"
            people_in_conversation.each {|person| person.happiness -= 2}
            first,second = ["partisan", "lobbyist"]

        elsif topic_of_conversation == "weather" 
            people_in_conversation.each {|person| person.happiness +=1}
            first, second = ["sun", "rain"]
        end 

        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
    end
end


# Objective -create a Person class. Each instance of the `Person` class will have the ablity to:
   #state if they are happy and/or clean
   #get paid/receive payments
   #take a bath
   #call a friend
   #start a conversation

   # we are asked to initialize each instance with following attributes
    # name, bank_account, happiness, hygiene
         #1 name cannot be changed so this will be put in attr_reader.
         #2 bank_account, happiness, hygiene should be able to change so these are included in attr_accessor
         # all of these attributes have become methods where object.attribute will return its value
         #3 under initialize method, create instance variable for all attributes and set it equal to its value specified in directions
        #4  Put name as an argument in intialize method 
    
    #5 asked that happiness and hygiene points should be able to change.
        #set the max =10
        #set the min =0
        #6 we set our happiness=(num)
        #7 say if @happiness/hygiene variable is greater than 10, we are going to set that to 10
        #8 if @happiness/hygiene variable is less than 0, we set that to 0. 
    
    #8 asked to write clean? and happy? methods
        # return true if happiness or hygiene points exceed seven, otherwise return false.
        #9 we call method happiness and clean here as these methods give us the value of these values

    #10 asked to wirte get_paid, take_bath, and work_out method and add or subtract happiness/hygiene points and return a respective string
        #11 we use self as a person, instance of the class and call appropriate intance method and subtract/add happiness/hygiene points and return a string. 
 
    #12 asked to write call_friend method. this incorporates another instance of the Person class calleld friend. 
        # we increase the caller(self) and callee(friend) by 3 points and return a string "Hi callee. It's caller. How are you?
        # we need to increase the happines points for both caller and callee
            #we will use .each method
                #create an array of objects we are iterating over [friend_we_are_calling, self]
                #put element name(obj) in | | and specify to increase happiness value by 3 for each object. 
                #above method ame as   # self.happiness += 3 friend.happiness +=3
                # use string interpolation to plug in friend_we_are_calling and self in appropriate places of the string. 
    #13 asked to write a start_conversation method that accepts two arguments (callee, topic)
        # based on the topic (politics/weather), both caller and callee's happiness points increase/decrease
            # since we want to apply the same method to people in the conversation, you use .each method
                # to use each method, we create an array of two people in the conversation.
            # three scenarios ("politics", "weather", "none of the above")
                # perform each method for politics and weather scenarios
                    # for politics -2
                    # for wethaer +1
        def start_conversation (friend_you_are_calling, topic_of_conversation)
            people_in_conversation = [friend_you_are_calling,self]
            if topic_of_conversation == "politics"
                people_in_conversation.each {|person| person.happiness -= 2}
                first,second = ["partisan", "lobbyist"]
    
            elsif topic_of_conversation == "weather" 
                people_in_conversation.each {|person| person.happiness +=1}
                first, second = ["sun", "rain"]
            end 
    
            first ||= "blah"
            second ||= "blah"
            base_string = "blah blah #{first} blah #{second}"
        end