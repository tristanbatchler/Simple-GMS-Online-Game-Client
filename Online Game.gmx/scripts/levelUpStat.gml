///levelUpStat(instance of actor, stat, amount)

var actor = argument0;
var stat = argument1;
var amount = argument2;

/*
 * Enters the level-up screen for the specified actor.
 * Returns true if the level up occured. False otherwise.
 */
 
if (!is_undefined(actor.stat)) {
    actor.stat += amount;
    }

// Else the stat does not exist for the actor and return false.
return false;
