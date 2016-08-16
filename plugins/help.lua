local function run(msg, matches)
  if is_chat_msg(msg) then
    local text = [[‌✅Commands to play game
برای نشان دادن پول خود:
اعتبار (نام خود)

🔷

برای نشان دادن فروشگاه:
shop فروشگاه یا

🔷

/news
برای اطلاع از آخرین خبر ها

🔷

/helpfun
برای نمایش دیگر امکانات ربات

برای آشنایی از دیگر دستورات در کانال زیر جوین شوید:
@GTASanGame

شما می توانید بخ جای / از ! و # استفاده کنید
➖🔸➖🔹➖🔸➖🔹➖]]
    return text
  end
  if is_channel_msg(msg) then
    local text = [[‌‌✅Commands to lock|unlock
💭/close|open link
💭/close|open member
💭/close|open name
💭/close|open bot
💭/close|open photo
💭/close|open sticker
💭/close|open file 
💭/close|open audio
💭/close|open talk

➕
✅Commands for control member
💭/kick : by <reply|id|username>
💭/ban : by <reply|id|username>
💭/unban : by <reply|id|username>
💭/kickme

➕
✅Group control 
💭/rules
💭/setrules <write rules>
💭/about
💭/setabout <write about>
💭/setphoto : then send photo
💭/setname <write name>
💭/id
💭/id chat
💭/group settings 
💭/getlink : send link in your pv
💭/relink <idchat> : change link group and send new link your pv
💭/modlist
💭/help

➕
✅ Group Promote  commands
💭/spromote : up leader by <reply|id|username> 
💭/sdemote : in promote by <reply|id|username>
💭/promote : by <reply|id|username> 
💭/demote : by <reply|id|username> 

➖🔸➖🔹➖🔸➖🔹➖]]
    return text
  else
    local text = [[aaa]]
    --return text
  end
end

return {
  description = "Help plugin. Get info from other plugins.  ", 
  usage = {
    "!help: Show list of plugins.",
  },
  patterns = {
    "^[/!#](help)$",
  }, 
  run = run,
}
