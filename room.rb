class Room

 attr_reader :room_name, :size, :guest, :entry_fee

  def initialize(room_name, size, guest, entry_fee)
    @room_name = room_name
    @size = size
    @guest = []
    @entry_fee = entry_fee
  end

  def guest_count()
    return @guest.length()
  end

  def check_in_guest(guest)
   @guest.push(guest)
 end

 def check_out_guest(guest)
   @guest.delete(guest)
end

def room_is_full
  if @size >= 5
    return "Room is full, please wait"
    end
  end
end
