///drawTarget(x, y, target)

var textSpacing = string_height("|");

var xx = argument0;
var yy = argument1;
var target = argument2;

var targetName;
var sTargetHp;
var cTargetHp
if (target != noone) {
    targetName = target.name;
    sTargetHp = " - " + string(target.hp) + "/" + string(target.maxHp);
    cTargetHp = C_ALLY;
    var targetHpRatio;
    if (target.maxHp != 0) then targetHpRatio = target.hp / target.maxHp; else targetHpRatio = 0;
    if (targetHpRatio < 0.75) then cTargetHp = C_ALLY_HOSTILE;
    if (targetHpRatio < 0.30) then cTargetHp = C_PLAYER_HOSTILE;
    } else {
        targetName = "Noone";
        sTargetHp = "";
        cTargetHp = c_black;
        }
        
draw_text_colortags(xx, yy, "[" + targetName + "[c=" + string(cTargetHp) + "]" + sTargetHp + "]");
