description=[[
Checks if an RDP port is open.
]]
author = "ROleg"
license = "Same as Nmap--See http://nmap.org/book/man-legal.html"
categories = {"default", "discovery", "external", "intrusive"}
require "shortport"
portrule = shortport.portnumber(3389, "tcp", "open")
action = function(host, port)
	file = io.open ("results.txt","a+")
	file:write (host.ip.."\n")
	file:flush()
	file:close()
end
