///currentRoomIsMap() -> Returns true iff the room the player is in is a map.

var currentRoomName = room_get_name(room);

return (string_copy(currentRoomName, 0, 5) == "rmMap");
