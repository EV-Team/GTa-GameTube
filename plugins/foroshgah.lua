local function set_description(msg, data)
    if not is_momod(msg) then
        return "این امکان برای شما موجود نیست!"
    end
    local data_cat = 'description'
    data[tostring(msg.to.id)][data_cat] = deskripsi
    save_data(_config.moderation.data, data)

    return 'Set shop item to:\n'..deskripsi
end

local function get_description(msg, data)
    local data_cat = 'description'
    if not data[tostring(msg.to.id)][data_cat] then
        return 'No item available.'
    end
    local about = data[tostring(msg.to.id)][data_cat]
    local about = string.gsub(msg.to.print_name, "_", " ")..':\n\n'..about
    return 'About '..about
end

function run(msg, matches)
	local data = load_data(_config.moderation.data)
    local receiver = get_receiver(msg)
    if is_chat_msg(msg) then
        if data[tostring(msg.to.id)] then
        	local settings = data[tostring(msg.to.id)]['settings']
        	local get_cmd = matches[1]
           if matches[1] == 'setshop' and matches[2] then
                deskripsi = matches[2]
                return set_description(msg, data)
           end
            if matches[1] == 'shop' then
                return get_description(msg, data)
            end
        end
    end
end

return {
  description = "",
  usage = {},
  patterns = {
    "^/(setshop) (.+)$",
    "^/(shop)$",


  }, 
  run = run,
  pre_process = pre_process
}

end
