do 
local function oscar(extra, success, result) -- function result 
 local oscar_id = result.from.peer_id 
 local r = extra.r 
 if result.from then 
    if result.from.username then 
       username = result.from.username 
    else 
       username = "nil" 
    end 
 end 
 local msg = result 

 local id = "your id "..oscar_id 

 local first = "your first name "..msg.from.first_name or "" 

 local text = "your username @"..username.."\n"..id.."\n"..first 

 local m = extra.m 
 if m == "userid" or "ايدي العضو" then 
   send_large_msg(r, id) 
 elseif m == "info" or "انفو" then 
   send_large_msg(r, text) 
 end 
end 
local function run(msg, matches) 
 local r = get_receiver(msg) 
-- by oscarteam 
  if is_momod(msg) and matches[1] == "userid" or matches[1] == "ايدي العضو" and msg.reply_id then 
--id for user by reply 
     msgr = get_message(msg.reply_id, oscar, {r=r, m=matches[1]}) 

  elseif matches[1] == "id" or matches[1] == "ايدي" then 
-- id for group 
     send_large_msg(r, "id group "..msg.to.title.."\n"..msg.to.id ) 

  elseif is_momod(msg) and matches[1] == "info" or matches[1] == "انفو" and msg.reply_id then 
-- info for user by reply 

     msgr = get_message(msg.reply_id, oscar, {r=r, m=matches[1]}) 

  elseif matches[1] == "me" or matches[1] == "مي" then 
     return "{ First name } "..msg.from.first_name.."\n".. "{ Last name } "..(msg.from.last_name or " ").."\n".."{ your username } @"..msg.from.username.."\n".."{ your id } "..msg.from.id.."\n".."{ id group } "..msg.to.id.."\n".."{ group name } " ..msg.to.title 
-- me for user 

end 
end 
return { 
  patterns = { 
       "^(.*)$", 
  }, 
  run = run, 
} 

end 

--By @G0VIP