///handlePacket(data buffer)

var dataBuffer = argument0;
var command = buffer_read(dataBuffer, buffer_string);
show_debug_message("Networking event: " + string(command))

switch(command){

    case "HELLO":
        var serverTime = buffer_read(argument0, buffer_string);
        show_debug_message("Server welcomes you at " + serverTime);
        room_goto_next();
        break;
    
    case "LOGON":
        var status = buffer_read(dataBuffer, buffer_string);
        if (status == "TRUE") {
            var targetRoom = buffer_read(dataBuffer, buffer_string);
            var targetXPos = buffer_read(dataBuffer, buffer_u16);
            var targetYPos = buffer_read(dataBuffer, buffer_u16);
            var playerName = buffer_read(dataBuffer, buffer_string);
            var initialRoom = asset_get_index(targetRoom);
            room_goto(initialRoom);
            
            // Initiate a player in this room.
            var player = instance_create(targetXPos, targetYPos, Player);
            player.name = playerName;
            
            show_debug_message("Player logged in and spawned successfully!");
            
            }
        else if (status == "FALSE") {
            show_message("Registration unsuccesful. Perhaps password incorrect.");
            room_goto(rmTitle);
            }
        break;
        
    case "REGISTER":
        var status = buffer_read(dataBuffer, buffer_string);
        if (status == "TRUE") {
            show_message("Registration successful. Please logon.");
            }
        else if (status == "FALSE") {
            show_message("Registration unsuccesful. Perhaps username is already taken.");
            }
        break;

    case "POS":
        username = buffer_read(argument0, buffer_string)
        target_x = buffer_read(argument0, buffer_u16)
        target_y = buffer_read(argument0, buffer_u16)
        
        foundPlayer = -1;
        with(NetworkPlayer){
            if(name == other.username){
                other.foundPlayer = id;
                break;
            }
        }
        
        if(foundPlayer != -1){
        
            with(foundPlayer){
                x = other.target_x;
                y = other.target_y;
            }
        
        } else {
        
            with(instance_create(target_x, target_y, NetworkPlayer)){
                name = other.username;
            }    
        
        }
        break;
        
    case "END":
        netUsername = buffer_read(dataBuffer, buffer_string);
        with (NetworkPlayer) {
            if (name == other.netUsername) {
                show_debug_message(name + " has left the game.");
                instance_destroy();
                break;
                }
            }
        break;
    
    case "CHAT":
        var netUsername = buffer_read(dataBuffer, buffer_string);
        var chatText = buffer_read(dataBuffer, buffer_string);
        addToChatLog(netUsername, chatText);
        break;
    }
