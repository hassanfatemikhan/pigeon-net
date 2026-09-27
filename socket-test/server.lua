local socket = require("socket")

local server = assert(socket.bind("127.0.0.1", 8080))
print("SERVER ON")


local client = server:accept()
local read = client:receive()

if read then
    print("Data - " .. read)
    client:send(read .. "\n")
    client:close()
    server:close()
end
