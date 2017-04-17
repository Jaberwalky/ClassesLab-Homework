class Team

  attr_accessor :name, :players, :coach, :points
  
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
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

  def is_on_team(name_to_check)
    for player in @players 
      if player == name_to_check
        return true
      end
    end
    return false
  end

  def win_or_lose(win_or_lose)
    @points += 1 if win_or_lose == "win"
  end

end