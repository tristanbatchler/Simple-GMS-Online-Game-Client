///drawStatusPrompt(x, y, target)

var textSpacing = string_height("|");

var xx = argument0;
var yy = argument1;

var hp = Player.hp;
var maxHp = Player.maxHp;
var hpRatio;
if (maxHp != 0) then hpRatio = hp / maxHp; else hpRatio = 0;

var sp = Player.sp;
var maxSp = Player.maxSp;
var spRatio;
if (maxSp != 0) then spRatio = sp / maxSp; else spRatio = 0;

var mp = Player.mp;
var maxMp = Player.maxMp;
var mpRatio;
if (maxMp != 0) then mpRatio = mp / maxMp; else mpRatio = 0;

var sHP = "HP: " + string(hp) + "/" + string(maxHp) + "    ";
var sSP = "SP: " + string(sp) + "/" + string(maxSp) + "    ";
var sMP = "MP: " + string(mp) + "/" + string(maxMp) + "    ";

var cHP = C_ALLY;
var cSP = C_ALLY;
var cMP = C_ALLY;

if (hpRatio < 0.75) {
    cHP = C_ALLY_HOSTILE;
    }
if (hpRatio < 0.30) {
    cHP = C_PLAYER_HOSTILE;
    }
if (spRatio < 0.75) {
    cSP = C_ALLY_HOSTILE;
    }
if (spRatio < 0.30) {
    cSP = C_PLAYER_HOSTILE;
    }
if (mpRatio < 0.75) {
    cMP = C_ALLY_HOSTILE;
    }
if (mpRatio < 0.30) {
    cMP = C_PLAYER_HOSTILE;
    }

draw_text_colortags(xx, yy, "[c=" + string(cHP) + "]" + sHP + "[c=" + string(cSP) + "]" + sSP + "[c=" + string(cMP) + "]" + sMP);
