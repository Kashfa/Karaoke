require("minitest/autorun")
require_relative("../guest")
require_relative("../room")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Tony", 50, "Respect")
 end

  def test_guest_has_name
    assert_equal("Tony", @guest.name)
end

def test_guest_has_wallet
  assert_equal(50, @guest.wallet())
end

# def test_guest_pays_entry_fee
#    @guest.guest_pays_entry_fee(@room)
#    assert_equal(40, @guest.wallet())
#   end

def test_guest_has_favourite_song
  assert_equal("Respect", @guest.favourite_song())
end

def test_if_favourite_song_is_played
  
end
