require 'minitest/autorun'
require_relative 'part_b'
require 'minitest/rg'

class TestSportsTeam < Minitest::Test

  def setup
    @team_members = ["D Gray", "P Hanlon", "L Fontaine", "B McLean", "L Stevenson", "J Forster", "D McGregor", "E Ambrose", "C Crane"]
    @team = Team.new("Hibernian FC", @team_members.clone, "N Lennon")
  end

  def test_get_name
    assert_equal("Hibernian FC", @team.name())
  end

  def test_get_players
    assert_equal(@team_members, @team.players())
  end

  def test_get_coach
    assert_equal("N Lennon", @team.coach())
  end

  def test_set_coach_name
    @team.coach = "G Parker"
    assert_equal("G Parker", @team.coach())
  end

  def test_add_new_player
    expected_team_array = @team_members << "G Holt"
    @team.add_new_player("G Holt")
    assert_equal(expected_team_array, @team.players)
    assert_equal(10, @team.players().length())
  end 

  def test_check_if_player_is_on_team__true
    assert_equal(true, @team.is_on_team("L Stevenson"))
  end 

  def test_check_if_player_is_on_team__false
      assert_equal(false, @team.is_on_team("R McDonald"))
  end 



end