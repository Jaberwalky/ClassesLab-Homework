require 'minitest/autorun'
require_relative 'part_b'
require 'minitest/rg'

class TestSportsTeam < Minitest::Test

  def setup
    @team_members = ["D Gray", "P Hanlon", "L Fontaine", "B McLean", "L Stevenson", "J Forster", "D McGregor", "E Ambrose", "C Crane"]
    @team = Team.new("Hibernian FC", @team_members, "N Lennon")
  end

  def test_get_name
    assert_equal("Hibernian FC", @team.get_name())
  end

  def test_get_players
    assert_equal(@team_members, @team.get_players)
  end

  def test_get_coach
    assert_equal("N Lennon", @team.get_coach())
  end




end