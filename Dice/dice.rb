class Dice
  attr_accessor :num_die
  attr_reader :roll_results

  def initialize(num_die=1)
    @num_die = num_die
    @roll_results = []
  end

  def roll
    @roll_results.clear
    @num_die.times { roll_results << rand(1..6) }
    @roll_results
  end
end

