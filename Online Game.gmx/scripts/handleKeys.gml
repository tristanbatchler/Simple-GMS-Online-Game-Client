if (!playerTyping() && !menuOpen()) {

    /*******************************************
     *              MOVEMENT                   *
     *******************************************/
    if (instance_exists(Player)) {
        if (keyboard_check_pressed(ord("W"))) {
            move(Player, 0, -1, GRID_SIZE);
            }
        else if (keyboard_check_pressed(ord("S"))) {
            move(Player, 0, 1, GRID_SIZE);
            }
        else if (keyboard_check_pressed(ord("A"))) {
            move(Player, -1, 0, GRID_SIZE);
            }
        else if (keyboard_check_pressed(ord("D"))) {
            move(Player, 1, 0, GRID_SIZE);
            }
        }
        
    /*******************************************
     *        OUTSIDE DUNGEON COMMANDS         *
     *******************************************/
    if (instance_exists(Player) && currentRoomIsMap()) {
        if (keyboard_check_pressed(ord("G"))) {
            // Open guild/party menu.
            instance_create(0, 0, GuildPartyMenu);
            }
        }
    
    /*******************************************
     *      GUILD / PARTY MENU COMMANDS        *
     *******************************************/
    with (GuildPartyMenu) {
        if (keyboard_check_released(vk_enter)) {
            
                if (newGuildEntry != noone) {
                    var newGuildName = newGuildEntry.text;
                    if (newGuildEntry.focus) {
                        show_message("Try to register guild" + newGuildName);
                        newGuildEntry.focus = false;
                        }
                    }
                    
                else if (newPartyEntry != noone) {
                    var newPartyName = newPartyEntry.text;
                    if (newPartyEntry.focus) {
                        show_message("Try to register party" + newPartyName);
                        newPartyEntry.focus = false;
                        }
                    }
            }
        else if (keyboard_check_released(ord("F"))) {
            /// Form a new guild screen.
            screen = "formNewGuild";
            description = "Please enter a name for your guild.";
            
            newGuildEntry = newTextField(0.5 * room_width, yMax - GRID_SIZE, "Name: ", 20);
            newGuildEntry.focus = true;
            }
        }   
    }
