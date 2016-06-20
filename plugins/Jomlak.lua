local database = 'http://umbrella.shayan-soft.ir/txt/'
local function run(msg)
	local res = http.request(database.."jomlak.db")
	if string.match(res, 'https://telegram.me/joinchat/C9R_Yz6n71KH2zbWzK2cJg') then res = string.gsub(res, 'https://telegram.me/joinchat/C9R_Yz6n71KH2zbWzK2cJg', "")
 end
	local jomlak = res:split(",")
	return jomlak[math.random(#jomlak)]
end

return {
	description = "500 Persian Jomlak",
	usage = "jomlak : send random jomlak",
	patterns = {"^[Jj]omlak$"},
	run = run
}
