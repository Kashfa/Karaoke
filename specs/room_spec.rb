require("minitest/autorun")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class TestRoom < MiniTest::Test

  def setup()
@room = Room.new("Wild Ones", 5, [], 10)
@guest = Guest.new("Tony", 50)
@guest1 = Guest.new("Sandy", 20)
@guest2 = Guest.new("Sean", 30)
@song = Song.new("Like a Rolling Stone", "The Rolling Stones")
end

def test_has_a_name
    assert_equal("Wild Ones", @room.room_name())
  end

  def test_maximum_size
    assert_equal(5, @room.size())
  end

  def test_room_is_empty()
    assert_equal(0, @room.guest_count())
  end


  def test_check_in_guest
      @room.check_in_guest(@guest1)
      guest = @room.guest
      assert_equal(1, guest.count())
    end

    def test_check_out_guest
      @room.check_out_guest(@guest2)
      guest = @room.guest
      assert_equal(0, guest.count())
    end

  def test_play_song_in_room
    assert_equal("Like a Rolling Stone", @song.name())
  end

  def test_room_is_full
    result = @room.room_is_full()
    assert_equal("Room is full, please wait", result)
  end

def test_entry_fee
  assert_equal(10, @room.entry_fee())
end

  end
