///actorIsAlly(instance of actor)

/*
 * Returns whether or not the specified actor is an ally of the player.
 */
 
var actor = argument0;
var allies = Player.allies;

if (ds_list_find_index(allies, actor) != -1) {
    return true;
    }
    
return false;
