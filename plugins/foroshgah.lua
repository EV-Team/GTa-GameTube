local function set_shop(msg, data)
    if not is_momod(msg) then
        return "این امکان برای شما موجود نیست!"
    end
    local data_cat = 'shop'
    data[data_cat] = deskripsi
    save_data(_config.moderation.data, data)

    return 'Set shop item to:\n'..deskripsi
end

local function get_shop(msg, data)
    local data_cat = 'shop'
    if not data[data_cat] then
        return 'No item available.'
    end
    local about = data[data_cat]
    local about = string.gsub(msg.to.print_name, "_", " ")..':\n\n'..about
    return 'About '..about
end

function run(msg, matches)
 local data = load_data(_config.moderation.data)
    local receiver = get_receiver(msg)
        if data['shop'] then
         local get_cmd = matches[1]
           if matches[1] == 'setshop' and matches[2] then
                deskripsi = matches[2]
                return set_shop(msg, data)
           end
            if matches[1] == 'shop' then
                return get_shop(msg, data)
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
}

end
