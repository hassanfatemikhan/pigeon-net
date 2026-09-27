local socket = require("socket")

-- SERVER CONFIG
local client = assert(socket.connect("127.0.0.1", 8080))
print("ClIENT UP")


-- MAIN LOOP
while true do

    client:send("nice\n")
    socket.sleep(10)

    local message = client:receive()

    if message then
    print("Received message: " .. message)
    end
end


client:close()