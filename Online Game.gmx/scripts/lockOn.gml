///lockOn(instance of obect to lock on to)

/* 
 * Sets the instance target for the instance calling this for future actions.
 * Returns true if lockOn was successful and false otherwise.
 *
 */
 
var instanceToLockOnto = argument0;

if (!is_undefined(target)) {
    // If the instance calling this is able to target, target and return true.
    target = instanceToLockOnto;
    return true;
    }
    
// If the instance calling this is unable to target, return false.
return false;
        
