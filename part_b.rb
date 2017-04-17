class Team

  attr_accessor :name, :players, :coach
  
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  # def get_name()
  #   return @name
  # end

  # def get_players()
  #   return @players
  # end

  # def get_coach()
  #   return @coach
  # end

  # def set_coach_name(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    @players << new_player
  end

end