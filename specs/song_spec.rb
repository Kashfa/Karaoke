require("minitest/autorun")
require_relative("../song")


class TestSong < MiniTest::Test
def setup()

  @song = Song.new("Like a Rolling Stone", "The Rolling Stones")

end

def test_play_song
  assert_equal("Like a Rolling Stone", @song.name())
  end
end
