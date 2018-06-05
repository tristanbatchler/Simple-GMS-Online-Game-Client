///sendPlayerPOSPacket() -> Updates player position to the server.

//Update player position to the network.

var posPacket = buffer_create(1, buffer_grow, 1);
buffer_write(posPacket, buffer_string, "POS");
buffer_write(posPacket, buffer_u32, Player.x);
buffer_write(posPacket, buffer_u32, Player.y);

networkWrite(Network.socket, posPacket);
