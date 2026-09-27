local socket = require("socket")


local server = assert(socket.udp())
server:setsockname("127.0.0.1", 8080)

-- local msg = server:rechivefrom()
for i = 1, 10 do 
    server:sendto("+1")
    socket.sleep(1)
end

server:close()

