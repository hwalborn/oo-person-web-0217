require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account
  attr_reader :happiness
  attr_reader :hygiene

  def initialize(name, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = hygiene
  end

  def hygiene=(new_level)
    if new_level > 10
      @hygiene = 10
    elsif new_level < 0
      @hygiene = 0
    else
      @hygiene = new_level
    end
  end

  def happiness= (new_level)
    if new_level > 10
      @happiness = 10
    elsif new_level < 0
      @happiness = 0
    else
      @happiness = new_level
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
    self.hygiene -= 3
    self.happiness += 2
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
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
