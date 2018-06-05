///addToChatLog(netUser, chatText) -> updates chatlog feed.

var netUser = argument0;
var chatText = argument1;

ds_list_add(Chat.log, string_upper(netUser) + ' SAYS: "' + chatText + '"');
