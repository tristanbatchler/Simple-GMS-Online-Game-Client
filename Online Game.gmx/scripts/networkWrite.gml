///networkWrite(socket, dataBuffer)

var socket = argument0;
var dataBuffer = argument1;

// Initialize
var packetSize = buffer_tell(dataBuffer);
var buffPacket = buffer_create(1, buffer_grow, 1);

// Write size and packet into new buffer.
buffer_write(buffPacket, buffer_u8, packetSize + 1);
buffer_copy(dataBuffer, 0, packetSize, buffPacket, 1);
buffer_seek(buffPacket, 0, packetSize + 1);

// Send the packet to the server.
network_send_raw(socket, buffPacket, buffer_tell(buffPacket));
show_debug_message("Sending to server: " + string(buffPacket));

// Delete the buffers from memory.
buffer_delete(dataBuffer);
buffer_delete(buffPacket);
