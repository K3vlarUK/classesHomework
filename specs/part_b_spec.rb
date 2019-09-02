require('minitest/autorun')
require('minitest/pride')
require_relative('../part_b.rb')

# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Made Up Utd", ["Steve", "David", "Edgar", "Tom"], "Boaty McBoatface", 0)
  end

  # For each property in the class make a getter method than can return them.
  def test_team_name
    assert_equal("Made Up Utd", @team.team_name())
  end

  def test_players
    assert_equal(["Steve", "David", "Edgar", "Tom"], @team.players())
  end

  def test_manager
    assert_equal("Boaty McBoatface", @team.manager())
  end

  # Create a setter method to allow the coach's name to be updated.
  def test_set_manager
    @team.manager = "David David"
    assert_equal("David David", @team.manager())
  end

  # Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
  # 👍

  # Create a method that adds a new player to the players array.
  def test_add_new_player
    @team.add_new_player("Peter")
    assert_equal(5, @team.players.length())
  end

  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.
  def test_find_player__found
    assert_equal(true, @team.find_player("David"))
  end

  def test_find_player__not_found
    assert_equal(false, @team.find_player("John"))
  end

  # Add a points property into your class that starts at 0.
  def test_starting_points
    assert_equal(0, @team.points())
  end

  # Create a method that takes in whether the team has won or lost and updates the points property for a win.
  def test_points_change__win
    @team.points_change("win")
    assert_equal(3, @team.points())
  end

  def test_points_change__lose
    @team.points_change("lose")
    assert_equal(0, @team.points())
  end

end
