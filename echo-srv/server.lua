local socket = require("socket")

-- SERVER CONFIG
local server = assert(socket.bind("127.0.0.1", 8080))
print("SERVER ON")




while true do
    local client = server:accept()


    while true do
    local message = client:receive()

    -- CLOSE CLIENT
    if not message then
    break end

    if message then
    print("Data - " .. message)
    client:send(message .. "\n")

    end

end
    -- END LOOP
    client:close()
end

