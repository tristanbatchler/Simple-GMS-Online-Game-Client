///move(instance, int dx, int dy, int amount) -> Moves object in direction (dx, dy) by amount AND SENDS POS PACKET TO SERVER.

var obj = argument0;
var dx = argument1;
var dy = argument2;
var amount = argument3;

if (obj.x < room_width - X_PADDING - amount && dx > 0) {
    obj.x += dx * amount;
    }
else if (obj.x > X_PADDING && dx < 0) {
    obj.x += dx * amount;
    }
    
if (obj.y < room_height / 3 - amount && dy > 0) {
    obj.y += dy * amount;
    }
else if (obj.y > 0 && dy < 0) {
    obj.y += dy * amount;
    }

    
sendPlayerPOSPacket();
