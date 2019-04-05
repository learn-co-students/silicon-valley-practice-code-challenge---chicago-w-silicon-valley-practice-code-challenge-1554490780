require "pry"

class Startup

  # class /////////////
  @@all = []
  @@domains = []

  def self.all
    @@all
  end

  def self.domains
    @@domains
  end

  def self.find_by_founder(name)
    self.all.find { |startup|
      startup.founder == name
    }
  end

  # instance //////////
  attr_reader :name, :founder, :domain

  def initialize(name, founder, domain)
    # class //////////////////
    @@all << self
    @@domains << domain
    # instance ///////////////
    @name = name
    @founder = founder
    @domain = domain
  end

  def pivot(new_domain)
    @domain = new_domain
  end

end


biz = Startup.new("DaBiz", "Jack", "clothing")
biz2 = Startup.new("DaBiz2", "Joe", "ceramics")
biz3 = Startup.new("DaBiz3", "Moe", "dogs")

binding.pry
"sup"
