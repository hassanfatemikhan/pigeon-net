local socket = require("socket")

-- SERVER CONFIG
local client = assert(socket.connect("127.0.0.1", 8080))
print("ClIENT UP")


-- MAIN LOOP
while true do

    io.write("Input - ")
    client:send(io.read() .. "\n")
    client:send("MOO\n")

    local message = client:receive()
end


client:close()