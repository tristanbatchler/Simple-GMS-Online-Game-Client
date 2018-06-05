///actorIsEnemy(instance of actor)

/*
 * Returns whether or not the specified actor is an enemy of the player.
 */
 
var actor = argument0;
var enemies = Player.enemies;

if (ds_list_find_index(enemies, actor) != -1) {
    return true;
    }
    
return false;
