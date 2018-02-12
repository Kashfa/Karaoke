class Guest

  attr_reader :name, :wallet, :favourite_song
  attr_writer :name, :wallet, :favourite_song

  def initialize(name, wallet, favourite_song)
@name = name
@wallet = wallet
@favourite_song = favourite_song
 end

 # def guest_pays_entry_fee(room)
 #   @wallet -= room.entry_fee()
end
