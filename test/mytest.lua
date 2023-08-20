ls = require"lsleep"
local sleep = ls.sleep
local usleep = ls.usleep
local args = {...}

if #args == 0 then
   print("Usage: lua mytest.lua <wait_seconds_as_integer>")
   os.exit(1)
end

print("Testing sleep()")
sleep(args[1])


print("Testing usleep()")
local us = 1000000*args[1] 
usleep(us)
print("Done")
