local database = 'http://umbrella.shayan-soft.ir/txt/'
local function run(msg)
	local res = http.request(database.."joke.db")
	if string.match(res, 'https://telegram.me/joinchat/C9R_Yz6n71KH2zbWzK2cJg') then res = string.gsub(res, 'https://telegram.me/joinchat/C9R_Yz6n71KH2zbWzK2cJg', "")
 end
	local joke = res:split(",")
	return joke[math.random(#joke)]
end

return {
	description = "500 Persian Joke",
	usage = "joke : send random joke",
	patterns = {"^[Jj]oke$"},
	run = run
}
