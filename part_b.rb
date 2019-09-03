class Team

  def initialize(team_name, players, manager, points)
    @team_name = team_name
    @players = players
    @manager = manager
    @points = 0
  end

  attr_accessor :team_name, :players, :manager, :points

  def add_new_player(name)
    @players.push(name)
  end

  def find_player(name)
    return @players.include?(name)
  end

  def points_change(result)
    @points += 3 if result == "win"
    # Just to test functionality
    @points += 1 if result == "lose"
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def manager()
  #   return @manager
  # end
  #
  # def set_manager(name)
  #   @manager = name
  # end

end
