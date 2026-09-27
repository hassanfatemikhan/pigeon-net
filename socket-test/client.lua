local socket = require("socket")


local client = assert(socket.connect("127.0.0.1", 8080))
client:send("Welcome to the secret Lua club!\n")

local message = client:receive()
if message then
    print("Received message: " .. message)
end


client:close()