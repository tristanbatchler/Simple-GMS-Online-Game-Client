///currentRoomIsDungeon() -> Returns true iff the room the player is in is a dungeon.

var currentRoomName = room_get_name(room);

return (string_copy(currentRoomName, 0, 9) == "rmDungeon");
