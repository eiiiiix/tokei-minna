local discordia = require('discordia')
local client = discordia.Client()
local json = require('json.json')
local trim = function(s)
return s:match('^%s*(.-)%s*$')
end
local stretch_table = function(t)
local r = {}
for i = 1, 11 do
for k,v in pairs(t) do
r[#r + 1] = v
end
end
return r
end
client:on('ready', function()
print('\'tokei-minna\' ajimemashita: ' .. client.user.username)
end)
local parsemsg = function(message)
if (message.content:match('@everyone')) or (message.content:match('@here')) then
message:addReaction('🍆')
message:addReaction('🈁')
message:addReaction('🈂')
message:addReaction('🈷')
message:addReaction('🈶')
message:addReaction('🈯')
message:addReaction('🉐')
message:addReaction('🈹')
message:addReaction('🈚')
message:addReaction('🈲')
message:addReaction('🉑')
message:addReaction('🈸')
message:addReaction('🈴')
message:addReaction('🈳')
message:addReaction('㊗')
message:addReaction('㊙')
message:addReaction('🈺')
message:addReaction('🈵')
message:addReaction('🅰')
message:addReaction('🅱')
end
end
client:on('messageCreate', function(message)
local s, r = pcall(parsemsg, message)
if not (s) then
print('Erae')
end
end)
do
local token
do
local fp = io.open('./tokei-minna.txt', 'rb')
if not (fp) then
e = io.open('./log.txt', 'a+')
e:write('Erae: mitsukarimasen Token\n\n')
e:close()
return
end
token = trim(fp:read('*a'))
fp:close()
end
client:run(token)
end
