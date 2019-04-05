require "pry"

class VentureCapitalist
  # class /////////////
  @@all = []

  def self.all
    @@all
  end

  def self.tres_commas_club
    @@all.select { |vent_cap|
      vent_cap.total_worth > 1000000000
    }
  end

  # instance //////////
  attr_reader :name
  attr_accessor :total_worth, :funding_rounds

  def initialize(name)
    # class //////////////////
    @@all << self
    # instance ///////////////
    @name = name
    @total_worth = 0
    @funding_rounds = []
    #@total_worth = total_worth
  end

  def offer_contract(startup, type_invest, amount_money)
    contract = FundingRound.new(startup, self, type_invest, amount_money)
    @funding_rounds << contract
  end

  def funding_rounds
    @funding_rounds
  end

  def portfolio
    @funding_rounds.uniq
  end

  def biggest_investment
    @funding_rounds.max { | a, b |
      a.investment <=> b.investment
    }
  end

  def invested(domain_query)
    domain_portfolio = self.funding_rounds.select { | round |
      round.startup.domain == domain_query
    }

    domain_portfolio.sum { | rounds |
      rounds.investment
    }
  end

end

conan = VentureCapitalist.new("Conan")
conan.total_worth = 1000000000000
conan.offer_contract(biz, "angel", 400000)
conan.offer_contract(biz, "angel", 400000)
conan.offer_contract(biz, "angel", 400000)
conan.offer_contract(biz2, "angel", 400000)
conan.offer_contract(biz3, "angel", 400000)


binding.pry


"sup"
