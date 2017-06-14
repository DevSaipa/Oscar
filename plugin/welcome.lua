
do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = '͎اٰيَٰہٰمهہٰ هلهہٰ حياتيـٰہٰ ٰ͎نہٰـٰٰٰورتہٰ ✍✨🌝☝️'..'\n'..'\n'
    ..'💮 ٰ͎اسَٰہٰـٰٰٰمٰـّٰكٰـہ :  '..msg.action.user.print_name..'\n'
    ..'〽️ ͎ ٰمعَٰہٰـٰٰٰرفٰـّٰكٰـٰہٰ : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'🆔͎ ͎اٰيَٰہٰـديٰٰٰٰـّٰكٰـٰہٰ : '..msg.action.user.id..'\n'
    ..'🕉 ͎رقّٰہم هاٰتـٰٰٰفكٰـّٰٰـٰہٰ : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'͎♋️͎ ٰلّٰيَٰہ ضافٰـٰٰٰـّٰكـٰہٰ : '..msg.from.print_name..'\n'
    ..'〽️ ٰمعَّٰٰہٰـٰرفـٰہ͎ ٰلّٰيَٰہ ضافٰـٰٰٰـّٰكـٰہٰ : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'💮 ͎ اٰلّٰتَٰہاريٰـٰٰٰـخٰـٰہٰ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕧 الوقت : '..os.date(' %T*', os.time())..'\n'  
     -- BY - @G0vip
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
      local text = '͎اٰيَٰہٰمهہٰ هلهہٰ حياتيـٰہٰ ٰ͎نہٰـٰٰٰورتہٰ ✍✨🌝☝️ '..'\n'..'\n'
     ..'💮 ٰ͎اسَٰہٰـٰٰٰمٰـّٰكٰـہ :  '..msg.from.print_name..'\n'
    ..'〽️ ͎ ٰمعَٰہٰـٰٰٰرفٰـّٰكٰـٰہٰ : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'🆔 ͎اٰيَٰہٰـديٰٰٰٰـّٰكٰـٰہٰ: '..msg.from.id..'\n'
    ..'🕉 ͎رقّٰہم هاٰتـٰٰٰفكٰـّٰٰـٰہٰ : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'🦁 اسـم المجـ❆ـموعة : '..msg.to.title..'\n'
    ..'🦁 ايـدي المجـ❈ـموعة : '..msg.to.id..'\n'
    ..'📆 الـتاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕧 الوقـت : '..os.date(' %T*', os.time())..'\n'  
     -- BY - @G0vip
        return reply_msg(msg.id, text, ok_cb, false)
  end
      if matches[1] == "chat_del_user" then
       return " 🔸 الله وياك/ج كبد عمري 😍🙈 لتنسه الباب مفتوح 🌚"..msg.action.user.first_name
end
end
 -- BY - @G0vip
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",        
        "^!!tgservice (chat_del_user)$"
        
    },
 run = run
}
end
-- BY - @G0vip