class FundingRound

  # class ///////////
  @@all = []

  def self.all
    @@all
  end
  # instance ///////////
  attr_accessor :startup, :venture_capitalist, :type, :investment
  #attr_reader startup,

  def initialize(startup, venture_capitalist, type, investment)
    # class ///////////
    @@all << self
    # instance ///////////
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = investment
  end

end
