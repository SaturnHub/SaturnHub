

if not getgenv() then return end

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua", true))()
local requestt = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
local httpservice = game:GetService("HttpService")

if not getgenv().method or getgenv().method == nil then
	getgenv().method = "pq"
elseif not requestt then

	NotificationHolder:message {

		Title = "<font color='rgb(130, 220, 120)'>Warning</font>",
		Description = "Your executor is not supported.",
		Icon = 6023426926
	}

elseif getgenv().method == "ng" or getgenv().method == "ng " then

	NotificationHolder:message {
		Title = "<font color='rgb(130, 220, 120)'>Warning</font>",
		Description = "This method is deprecated and should be removed in favor of the BetterBypasser method. Switch to a more reliable method.",
		Icon = 6023426926
	}

end

repeat
    wait()
until game:IsLoaded()



local Players = game:GetService("Players")
local Chat = game:GetService("Chat")

local playerFrom = Players.LocalPlayer
local message = "C7RN"


local filteredString = Chat:FilterStringForBroadcast(message, playerFrom)



local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
if queueonteleport then
	queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser'))()")
end

    if syn and "Synapse X" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua",true))()
		getgenv().ANTICHAT = true
    else
        local Players = game:GetService("Players")
		local Player = Players.LocalPlayer or Players.PlayerAdded:wait()

		local PostMessage = require(Player:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain")).MessagePosted
		MessageEvent = Instance.new("BindableEvent")

		local OldFunctionHook
		local PostMessageHook = function(self, Message)
			if not checkcaller() and self == PostMessage then
				MessageEvent:Fire(Message)
				return
			end
			return OldFunctionHook(self, Message)
		end
		OldFunctionHook = hookfunction(PostMessage.fire, PostMessageHook)
        getgenv().ANTICHAT = true

	end		

    
	

	
	if not LOADED and ANTICHAT == true then
		NotificationHolder:message {
			Title = "Secure Chat <font color='rgb(130, 220, 120)'>Enabled</font>",
			Description = "For the interest of security and anonymity, secure chat has been enabled.",
			Icon = 10952973354
		}
	else
	NotificationHolder:message {
			Title = "Secure Chat <font color='rgb(130, 220, 120)'>Unavailable</font>",
			Description = "You will need Synapse X, Fluxus or Krnl to use the secure chat.",
			Icon = 10952973354
		}
	end

	local Bypasses = {

		["ass"] = "as{{aieixzvzx:s}}",
		["asshole"] = "as{{aieixzvzx:shole}}",
		["deadass"] = "dead as{{aieixzvzx:s}}",
		["arse"] = "ar{{aieixzvzx:se}}",  
		["arsehead"] = "ar{{aieixzvzx:se}}head",  
		["arsehole"] = "ar{{aieixzvzx:se}}hole",  
		["bitch"] = "bit{{aieixzvzx:ch}}",
		["bitches"] = "bit{{aieixzvzx:ches}}",  
		["cock"] = "co{{aieixzvzx:ck}}",
		["cocks"] = "co{{aieixzvzx:cks}}",  
		["cunt"] = "cu{{aieixzvzx:nt}}",
		["dick"] = "di{{zczxczvz:ck}}",
		["dickhead"] = "di{{zczxczvz:ckhead}}",
		["dicks"] = "di{{zczxczvz:cks}}",  
		["dyke"] = "dy{{aieixzvzx:ke}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["faggots"] = "fa{{aieixzvzx:ggots}}",
		["fuck"] = "fu{{aieixzvzx:ck}}",
		["fucks"] = "fu{{aieixzvzx:cks}}",
		["fucked"] = "fu{{aieixzvzx:cked}}",
		["fucking"] = "f{{aieixzvzx:u}}c{{aieixzvzx:k}}ing", -- Remanaged 
		["fuckin"] = "fu{{aieixzvzx:ckign}}",
		["gaylord"] = "gayl{{aieixzvzx:ord}}",
		["gaylords"] = "gayl{{aieixzvzx:ords}}",  
		["bastard"] = "bas{{aieixzvzx:tard}}",   
		["bastards"] = "bas{{aieixzvzx:tar}}ds",   -- Fixed
		["kike"] = "ki{{aieixzvzx:ke}}",
		["kikes"] = "ki{{aieixzvzx:kes}}",  
		["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
		["brotherfucker"] = "brotherf{{aieixzvzx:ucker}}",  
		["fatherfucker"] = "fatherf{{aieixzvzx:ucker}}",  
		["bugger"] = "bugg{{aieixzvzx:er}}",  
		["buggers"] = "bugg{{aieixzvzx:er}}s",  
		["nigga"] = "ni{{aieixzvzx:gga}}",
		["niggas"] = "ni{{aieixzvzx:ggas}}",
		["nigger"] = "ni{{aieixzvzx:gger}}",
		["niggers"] = "ni{{aieixzvzx:ggers}}",
		["piss"] = "p{{aieixzvzx:iss}}", 
		["pisses"] = "p{{aieixzvzx:isses}}",  
		["pissing"] = "p{{aieixzvzx:is}}sing",  
		["pisser"] = "pi{{aieixzvzx:sser}}",  
		["penis"] = "pe{{aieixzvzx:nis}}",
		["penises"] = "pe{{aieixzvzx:nises}}",  
		["pussy"] = "pu{{aieixzvzx:ssy}}",
		["shit"] = "sh{{aieixzvzx:it}}",
		["shitter"] = "sh{{aieixzvzx:itter}}",  
		["shitting"] = "sh{{aieixzvzx:itting}}",  
		["shitty"] = "shi{{aieixzvzx:tty}}",
		["horseshit"] = "horsesh{{aieixzvzx:it}}",  
		["jerk"] = "je{{aieixzvzx:rk}}",  
		["jerking"] = "jer{{aieixzvzx:king}}",  
		["slut"] = "sl{{aieixzvzx:ut}}",
		["sluts"] = "sl{{aieixzvzx:uts}}",  
		["whore"] = "who{{aieixzvzx:re}}",
		["whores"] = "who{{aieixzvzx:res}}",  
		["retard"] = "ret{{aieixzvzx:ard}}",
		["retarded"] = "ret{{aieixzvzx:arded}}",
		["kill"] = "ki{{aieixzvzx:ll}}",
		["kills"] = "ki{{aieixzvzx:lls}}",  
		["killing"] = "ki{{aieixzvzx:lling}}",  
		["gay"] = "g{{aieixzvzx:ay}}",
		["gays"] = "g{{aieixzvzx:ays}}",
		["sex"] = "se{{aieixzvzx:x}}",
		["sexy"] = "se{{aieixzvzx:xy}}",
		["sexting"] = "se{{aieixzvzx:xting}}",
		["porn"] = "po{{aieixzvzx:rn}}",
		["love"] = "l{{aieixzvzx:ove}}",
		["loves"] = "l{{aieixzvzx:oves}}",  
		["lover"] = "l{{aieixzvzx:over}}",  
		["loving"] = "l{{aieixzvzx:oving}}",  
		["date"] = "da{{aieixzvzx:te}}",  
		["dates"] = "da{{aieixzvzx:tes}}",  
		["dating"] = "da{{aieixzvzx:ting}}",  
		["dater"] = "da{{aieixzvzx:ter}}",  
		["rape"] = "ra{{aieixzvzx:pe}}",
		["raped"] = "rap{{aieixzvzx:ed}}",
		["rapes"] = "ra{{aieixzvzx:pes}}",  
		["raping"] = "rap{{aieixzvzx:ing}}",  
		["raper"] = "ra{{aieixzvzx:per}}",  
		["v3rm"] = "v3{{aieixzvzx:rm}}",
		["v3rmillion"] = "v3{{aieixzvzx:rmillion}}",  
		["hack"] = "ha{{aieixzvzx:ck}}",
		["hacking"] = "hac{{aieixzvzx:king}}",  
		["hacker"] = "hac{{aieixzvzx:ker}}",  
		["hackers"] = "hac{{aieixzvzx:kers}}",  
		["hot"] = "ho{{aieixzvzx:t}}",
		["hotter"] = "ho{{aieixzvzx:tter}}",  
		["boob"] = "bo{{aieixzvzx:ob}}",  
		["boobs"] = "boo{{aieixzvzx:bs}}",
		["tit"] = "t{{aieixzvzx:it}}",  
		["tits"] = "t{{aieixzvzx:its}}",  
		["thot"] = "th{{aieixzvzx:ot}}",  
		["thots"] = "th{{aieixzvzx:ots}}",  
		["thotting"] = "th{{aieixzvzx:otting}}",  
		["thotting"] = "th{{aieixzvzx:otting}}",  
		["condom"] = "con{{aieixzvzx:dom}}",
		["condoms"] = "con{{aieixzvzx:doms}}",  
		["thot"] = "th{{aieixzvzx:ot}}",
		["thots"] = "th{{aieixzvzx:ots}}",  
		["bang"] = "ban{{aieixzvzx:g}}",
		["ligma"] = "li{{aieixzvzx:gma}}",
		["ligmaballs"] = "ligm{{aieixzvzx:aballs}}",
		["terrorist"] = "terror{{aieixzvzx:ist}}",
		["terrorists"] = "terror{{aieixzvzx:ists}}",  
		["horny"] = "horn{{aieixzvzx:y}}",
		["mf"] = "m{{aieixzvzx:f}}",
		["lmao"] = "lm{{aieixzvzx:ao}}",
		["anus"] = "an{{aieixzvzx:us}}",
		["hacks"] = "hac{{aieixzvzx:ks}}",
		["predator"] = "pred{{aieixzvzx:ator}}",
		["predators"] = "pred{{aieixzvzx:ator}}",  
		["kiss"] = "ki{{aieixzvzx:ss}}",
		["kisses"] = "ki{{aieixzvzx:sses}}",  
		["kissing"] = "ki{{aieixzvzx:ssing}}",  
		["kisser"] = "ki{{aieixzvzx:sser}}",  
		["bomb"] = "bom{{aieixzvzx:b}}",
		["bomb"] = "bom{{aieixzvzx:bs}}",  
		["nude"] = "nu{{aieixzvzx:de}}",
		["nudes"] = "nu{{aieixzvzx:des}}",
		["child"] = "chi{{aieixzvzx:ld}}",
		["my"] = "m{{aieixzvzx:y}}",
		["racism"] = "raci{{aieixzvzx:sm}}",
		["hoe"] = "h{{aieixzvzx:oe}}",
		["pedo"] = "pe{{aieixzvzx:do}}",
		["nsfw"] = "ns{{aieixzvzx:fw}}",
		["suck"] = "su{{aieixzvzx:ck}}",
		["cum"] = "c{{aieixzvzx:um}}",
		["cums"] = "c{{aieixzvzx:ums}}",
		["cumming"] = "cu{{aieixzvzx:mming}}",
		["cumload"] = "cu{{aieixzvzx:mload}}",
		["creampie"] = "cre{{aieixzvzx:ampie}",
		["scammer"] = "sca{{aieixzvzx:mmer}}",
		["fucker"] = "fu{{aieixzvzx:cker}}",
		["hitler"] = "hit{{aieixzvzx:ler}}",
		["nazi"] = "na{{aieixzvzx:zi}}",
		["simp"] = "si{{aieixzvzx:mp}}",
		["simping"] = "sim{{aieixzvzx:ping}}",
		["meth"] = "me{{aieixzvzx:th}}",
		["cocaine"] = "co{{aieixzvzx:caine}}",
		["heroin"] = "hero{{aieixzvzx:in}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["ballsack"] = "ba{{aieixzvzx:llsack}}",
		["nutsack"] = "nu{{aieixzvzx:tsack}}",
		["athiest"] = "athi{{aieixzvzx:est}}",
		["jewish"] = "je{{aieixzvzx:wish}}",
		["christian"] = "chri{{aieixzvzx:stian}}",
		["muslim"] = "mu{{aieixzvzx:slim}}",
		["jurdism"] = "jur{{aieixzvzx:dism}}",
		["islam"] = "isl{{aieixzvzx:am}}",
		["allah"] = "al{{aieixzvzx:lah}}",
		["muhammad"] = "muha{{aieixzvzx:mmad}}",
		["christianity"] = "chri{{aieixzvzx:stianity}}",
		["satanism"] = "sata{{aieixzvzx:nism}}",
		["1"] = "on{{aieixzvzx:e}}",
		["2"] = "t{{aieixzvzx:wo}}",
		["3"] = "th{{aieixzvzx:ree}}",
		["4"] = "fo{{aieixzvzx:ur}}",
		["5"] = "fi{{aieixzvzx:ve}}",
		["6"] = "s{{aieixzvzx:ix}}",
		["7"] = "se{{aieixzvzx:ven}}",
		["8"] = "ei{{aieixzvzx:ght}}",
		["9"] = "ni{{aieixzvzx:ne}}",
		["10"] = "te{{aieixzvzx:n}}",
		["twitter"] = "twi{{aieixzvzx:tter}}",
		["youtube"] = "you{{aieixzvzx:tube}}",
		["rumble"] = "rum{{aieixzvzx:ble}}",
		["tiktok"] = "tik{{aieixzvzx:tok}}",
		["facebook"] = "face{{aieixzvzx:book}}",
		["whatsapp"] = "wha{{aieixzvzx:tsapp}}",
		["discord"] = "disco{{aieixzvzx:rd}}",
		["instagram"] = "inst{{aieixzvzx:agram}}",
		["snapchat"] = "snap{{aieixzvzx:chat}}",
		["wtf"] = "wt{{aieixzvzx:f}}",
		["gtfo"] = "gt{{aieixzvzx:fo}}",
		["kys"] = "k{{aieixzvzx:ys}}",
		["omfg"] = "omf{{aieixzvzx:g}}",
		["stfu"] = "st{{aieixzvzx:fu}}",
		["ily"] = "il{{aieixzvzx:y}}",
		["istg"] = "is{{aieixzvzx:tg}}",
		["and"] = "a{{aieixzvzx:nd}}",
		["or"] = "o{{aieixzvzx:r}}",
		["if"] = "i{{aieixzvzx:f}}",
		["else"] = "el{{aieixzvzx:se}}",
		["then"] = "th{{aieixzvzx:en}}",
		["why"] = "wh{{aieixzvzx:y}}",
		["what"] = "wha{{aieixzvzx:t}}",
		["who"] = "wh{{aieixzvzx:o}}",
		["where"] = "wh{{aieixzvzx:ere}}",
		["see"] = "se{{aieixzvzx:e}}",
		["do"] = "d{{aieixzvzx:o}}",
		["to"] = "t{{aieixzvzx:o}}",
		["of"] = "o{{aieixzvzx:f}}",
		["he"] = "h{{aieixzvzx:e}}",
		["she"] = "sh{{aieixzvzx:e}}",
		["they"] = "th{{aieixzvzx:ey}}",
		["them"] = "th{{aieixzvzx:em}}",
		["had"] = "h{{aieixzvzx:add}}",
		["for"] = "fo{{aieixzvzx:r}}",
		["on"] = "o{{aieixzvzx:n}}",
		["as"] = "a{{aieixzvzx:s}}",
		["you"] = "yo{{aieixzvzx:u}}",
		["my"] = "m{{aieixzvzx:y}}",
		["yours"] = "you{{aieixzvzx:rs}}",
		["not"] = "no{{aieixzvzx:t}}",
		["with"] = "wi{{aieixzvzx:th}}",
		["number"] = "numb{{aieixzvzx:er}}",
		["numbers"] = "numb{{aieixzvzx:ers}}",
		["day"] = "da{{aieixzvzx:y}}",
		["night"] = "ni{{aieixzvzx:ght}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["come"] = "co{{aieixzvzx:me}}",
		["it"] = "i{{aieixzvzx:t}}",
		["some"] = "so{{aieixzvzx:me}}",
		["there"] = "the{{aieixzvzx:re}}",
		["but"] = "bu{{aieixzvzx:t}}",
		["more"] = "mo{{aieixzvzx:re}}",
		["all"] = "a{{aieixzvzx:ll}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["its"] = "i{{aieixzvzx:ts}}",
		["yes"] = "ye{{aieixzvzx:s}}",
		["no"] = "n{{aieixzvzx:o}}",
		["so"] = "s{{aieixzvzx:o}}",
		["said"] = "sa{{aieixzvzx:id}}",
		["can"] = "ca{{aieixzvzx:n}}",
		["more"] = "mo{{aieixzvzx:re}}",
		["cuddle"] = "cud{{aieixzvzx:dle}}",
 		["attractive"] = "attr{{aieixzvzx:active}}",
		["slave"] = "sl{{aieixzvzx:ave}}",
		["slaves"] = "sl{{aieixzvzx:aves}}",
		["cracker"] = "crac{{aieixzvzx:ker}}",
		["peg"] = "pe{{aieixzvzx:g}}",
		["pegged"] = "pe{{aieixzvzx:gged}}",
		["finger"] = "fin{{aieixzvzx:ger}}",
		["fingered"] = "fin{{aieixzvzx:gered}}",
		["ride"] = "ri{{aieixzvzx:de}",
		["rides"] = "rid{{aieixzvzx:es}",
		["riding"] = "rid{{aieixzvzx:ing}",
		["kkk"] = "k{{aieixzvzx:kk}}",
		[".com"] = ".c{{aieixzvzx:om}}",
		["anal"] = "a{{aieixzvzx:n}}al",
		["sugar"] = "sug{{aieixzvzx:ar}}",
		["suicide"] = "sui{{aieixzvzx:cide}}",
		["hentai"] = "hen{{aieixzvzx:tai}}",
		["yaoi"] = "ya{{aieixzvzx:oi}}",
		["coon"] = "co{{aieixzvzx:on}}",
		["babe"] = "ba{{aieixzvzx:be}}",
		["babes"] = "ba{{aieixzvzx:bes}}",
		["sperm"] = "spe{{aieixzvzx:rm}}",
		["semen"] = "se{{aieixzvzx:men}}",
		["egg"] = "e{{aieixzvzx:gg}}",
		["twat"] = "twa{{aieixzvzx:t}}",
		["twats"] = "tw{{aieixzvzx:ats}}",
		["daddy"] = "dad{{aieixzvzx:dy}}",
		["mommy"] = "mom{{aieixzvzx:my}}",
		["daddies"] = "dadd{{aieixzvzx:ies}}",
		["mommies"] = "momm{{aieixzvzx:ies}}",
		["bend"] = "be{{aieixzvzx:nd}}",
		["bends"] = "be{{aieixzvzx:nds}}",
		["bending"] = "be{{aieixzvzx:n}}ding",
		["weed"] = "we{{aieixzvzx:ed}}",
		["hot"] = "h{{aieixzvzx:ot}}",
		["incest"] = "inc{{aieixzvzx:est}}",
		["lick"] = "lic{{aieixzvzx:k}}",
		["ball"] = "ba{{aieixzvzx:ll}}",
		["balls"] = "ba{{aieixzvzx:lls}}",

		-- pog new ones here 25/10/22
		["dildo"] = "dil{{aieixzvzx:do}}",
		["dildos"] = "dil{{aieixzvzx:dos}}",
		["fucktard"] = "f{{aieixzvzx:u}}c{{aieixzvzx:k}}ta{{aieixzvzx:rd}}",
		["fucktarded"] = "f{{aieixzvzx:u}}c{{aieixzvzx:k}}ta{{aieixzvzx:rd}}ed",
		["fucktards"] = "f{{aieixzvzx:u}}c{{aieixzvzx:k}}ta{{aieixzvzx:rds}}",
		["bitchass"] = "bit{{aieixzvzx:ch}}as{{aieixzvzx:s}}",
		["punkass"] = "pu{{aieixzvzx:nk}}as{{aieixzvzx:s}}",
		["jesus"] = "je{{aieixzvzx:sus}}", -- OMG AMONG US REFERENCE!!!!
		["wanker"] = "wa{{aieixzvzx:nker}}",
		["wankers"] = "wa{{aieixzvzx:nkers}}",
		["gangbang"] = "gangba{{aieixzvzx:n}}g",
		["gangbanging"] = "gangba{{aieixzvzx:n}}ging",
		["dumbass"] = "du{{aieixzvzx:mb}}as{{aieixzvzx:s}}",
		["dumbasses"] = "du{{aieixzvzx:mb}}as{{aieixzvzx:ses}}",
		["deez"] = "de{{aieixzvzx:ez}}",
		["nuts"] = "nu{{aieixzvzx:ts}}",
		["nutting"] = "nu{{aieixzvzx:tting}}",
		["mine"] = "mi{{aieixzvzx:ne}}",
		["bf"] = "b{{aieixzvzx:f}}",
		["gf"] = "g{{aieixzvzx:f}}",
		["boyfriend"] = "boyfr{{aieixzvzx:iend}}",
		["boyfriends"] = "boyfr{{aieixzvzx:iends}}",
		["girlfriend"] = "girlfr{{aieixzvzx:iend}}",
		["girlfriends"] = "girlfr{{aieixzvzx:iends}}",
		["like"] = "lik{{aieixzvzx:e}}",
		["liking"] = "lik{{aieixzvzx:ing}}",
		["robux"] = "ro{{aieixzvzx:bux}}",
		["free"] = "fr{{aieixzvzx:ee}}",
		["cottonpicker"] = "co{{aieixzvzx:tton}}pick{{aieixzvzx:er}}", -- WAS SUGGESTED
		["cottonpickers"] = "co{{aieixzvzx:tton}}picke{{aieixzvzx:rs}}", -- WAS SUGGESTED
		["genocide"] = "gen{{aieixzvzx:ocide}}", 
		["genocides"] = "gen{{aieixzvzx:ocides}}", 
		["shooter"] = "sho{{aieixzvzx:oter}}", 
		["shooters"] = "sho{{aieixzvzx:oters}}", 
		["pornhub.com"] = "po{{aieixzvzx:rn}}h{{aieixzvzx:ub}}.c{{aieixzvzx:om}}", 
		["aheago"] = "ahe{{aieixzvzx:ago}}", 
		["loli"] = "lol{{aieixzvzx:i}}", 
		["lolis"] = "l{{aieixzvzx:olis}}"
		-- cant believe im still working on this shit :skull:

	}

	

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

	
		local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
			local Method = getnamecallmethod()
			local Arguments = {...}
			
			if self == Remote and Method == "FireServer" then
				local Message = Arguments[1]
				local Split = Message:split(" ")
				local FinalMessage = ""

					for _, x in next, Split do
						for _, Bypass in next, Bypasses do
							if x:lower() == _ then
								if x:upper() ~= x then
									Message = Message:gsub(x, Bypass)
									FinalMessage = Message .. " "..method
								else
									Message = Message:gsub(x, Bypass):upper()
									FinalMessage = Message:gsub(x, Bypass):upper() .. " "..method
								end
							end
						end
					end
					
					if FinalMessage ~= "" then
						Arguments[1] = FinalMessage
					end
					
					return ChatBypass(self, unpack(Arguments))
				end
				
				return ChatBypass(self, ...)
		end)
	

	if not LOADED then
		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "FIRSTLY DISCOVERED WAS BY tav#8870. Bypasser was done by Decayed#5038 and AnthonyIsHere on V3rm. Modified by daddysyn",
			Icon = 6023426926
		}

	end



	NotificationHolder:message {
		Title = "Discord Server",
		Description = "Would you like to join the Discord Server?",
		Accept = {
			Text = "Yes",
			Callback = function()
				requestt(
					{
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
						Body = game:GetService("HttpService"):JSONEncode(
							{
								cmd = "INVITE_BROWSER",
								args = {code = "s4PxTVMUZp"},
								nonce = game:GetService("HttpService"):GenerateGUID(false)
							}
						)
					}
				)
			end
		},
		Dismiss = {Text = "No", Callback = function()
			NotificationHolder:message {Title = "<font color='rgb(240,248,255)'>Warning</font>", Description = "fuck you then im gonna invite you anyway bitch", Icon = 10952973359}

				wait(0.5)
				requestt(
					{
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
						Body = game:GetService("HttpService"):JSONEncode(
							{
								cmd = "INVITE_BROWSER",
								args = {code = "s4PxTVMUZp"},
								nonce = game:GetService("HttpService"):GenerateGUID(false)
							}
						)
					}
				)

			end}
	}






	wait(10)
	NotificationHolder:message {Title = "<font color='rgb(240,248,255)'>Warning</font>", Description = "sacred a skid", Icon = 10952973359}
	pcall(
		function()
			getgenv().LOADED = true
		end
	)



-- this line marks the anti ban
wait()
if not game:IsLoaded() then
    game.Loaded:wait()
end

local ACL_LoadTime = tick()

local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

local PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui") do
    if not PlayerGui then
        repeat task.wait() until Player:FindFirstChildWhichIsA("PlayerGui")
        PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui")
    end
end

local Notify = function(_Title, _Text , Time)
    StarterGui:SetCore("SendNotification", {Title = _Title, Text = _Text, Icon = "rbxassetid://2541869220", Duration = Time})
end

local Tween = function(Object, Time, Style, Direction, Property)
	return TweenService:Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction]), Property)
end

local Insert = function(Tbl, ...)
    for _, x in next, {...} do
        table.insert(Tbl, x) 
    end
end

local ChatFixToggle = true
local CoreGuiSettings = {}
local ChatFix

ChatFix = hookmetamethod(StarterGui, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    
    if not checkcaller() and ChatFixToggle and Method == "SetCoreGuiEnabled" then
        local CoreGuiType = Arguments[1]
        local SettingValue = Arguments[2]
        
        if CoreGuiType == ("All" or "Chat") then
            Insert(CoreGuiSettings, CoreGuiType, SettingValue)
            return
        end
    end
    
    return ChatFix(self, ...)
end)

local ACLWarning = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Top = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local WarningLbl = Instance.new("TextLabel")
local Loading = Instance.new("Frame")
local Bar = Instance.new("Frame")
local WarningBackground = Instance.new("Frame")
local WarningFrame = Instance.new("Frame")
local Despair = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Reason_1 = Instance.new("TextLabel")
local Reason_2 = Instance.new("TextLabel")
local Trollge = Instance.new("ImageLabel")
local UIPadding = Instance.new("UIPadding")

local MakeGuiThread = coroutine.wrap(function()    
    syn.protect_gui(ACLWarning)
    
    ACLWarning.Name = "ACL Warning"
    ACLWarning.Parent = CoreGui
    ACLWarning.Enabled = false
    ACLWarning.DisplayOrder = -2147483648
    
    Background.Name = "Background"
    Background.Parent = ACLWarning
    Background.AnchorPoint = Vector2.new(0.5, 0.5)
    Background.BackgroundColor3 = Color3.fromRGB(21, 0, 0)
    Background.BorderSizePixel = 0
    Background.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background.Size = UDim2.new(0.300000012, 0, 0.5, 0)
    
    Top.Name = "Top"
    Top.Parent = Background
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Top.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
    
    Exit.Name = "Exit"
    Exit.Parent = Top
    Exit.AnchorPoint = Vector2.new(0.5, 0.5)
    Exit.BackgroundColor3 = Color3.fromRGB(38, 0, 0)
    Exit.Position = UDim2.new(0.949999988, 0, 0.5, 0)
    Exit.Size = UDim2.new(0.100000001, -6, 1, -9)
    Exit.Visible = false
    Exit.Font = Enum.Font.Arcade
    Exit.Text = "X"
    Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
    Exit.TextScaled = true
    Exit.TextSize = 14.000
    Exit.TextWrapped = true
    
    UICorner.CornerRadius = UDim.new(0.200000003, 0)
    UICorner.Parent = Exit
    
    WarningLbl.Name = "WarningLbl"
    WarningLbl.Parent = Top
    WarningLbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WarningLbl.BackgroundTransparency = 1.000
    WarningLbl.Position = UDim2.new(0, 17, 0, 0)
    WarningLbl.Size = UDim2.new(0.5, 0, 1, 0)
    WarningLbl.Font = Enum.Font.Arcade
    WarningLbl.Text = "Warning!"
    WarningLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    WarningLbl.TextScaled = true
    WarningLbl.TextSize = 14.000
    WarningLbl.TextWrapped = true
    WarningLbl.TextXAlignment = Enum.TextXAlignment.Left
    
    Loading.Name = "Loading"
    Loading.Parent = Top
    Loading.AnchorPoint = Vector2.new(0.5, 0.5)
    Loading.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Loading.BorderSizePixel = 0
    Loading.Position = UDim2.new(0.699999988, 0, 0.5, 0)
    Loading.Size = UDim2.new(0.349999994, 0, 0.0199999996, 0)
    
    Bar.Name = "Bar"
    Bar.Parent = Loading
    Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bar.BorderSizePixel = 0
    Bar.Size = UDim2.new(0, 0, 1, 0)
    
    WarningBackground.Name = "WarningBackground"
    WarningBackground.Parent = Background
    WarningBackground.AnchorPoint = Vector2.new(0.5, 0.5)
    WarningBackground.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    WarningBackground.BorderSizePixel = 0
    WarningBackground.Position = UDim2.new(0.5, 0, 0.550000012, 0)
    WarningBackground.Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
    
    WarningFrame.Name = "WarningFrame"
    WarningFrame.Parent = WarningBackground
    WarningFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    WarningFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    WarningFrame.BorderSizePixel = 0
    WarningFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    WarningFrame.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
    
    Despair.Name = "Despair"
    Despair.Parent = WarningFrame
    Despair.AnchorPoint = Vector2.new(0.5, 0.5)
    Despair.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    Despair.BackgroundTransparency = 1.000
    Despair.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Despair.BorderSizePixel = 0
    Despair.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Despair.Size = UDim2.new(0.949999988, 0, 0.119999997, 0)
    Despair.Font = Enum.Font.Oswald
    Despair.Text = "Anti Chat Logger will not work here!"
    Despair.TextColor3 = Color3.fromRGB(255, 255, 255)
    Despair.TextScaled = true
    Despair.TextSize = 50.000
    Despair.TextWrapped = true
    Despair.TextYAlignment = Enum.TextYAlignment.Top
    
    UIListLayout.Parent = WarningFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 15)
    
    Reason_1.Name = "Reason_1"
    Reason_1.Parent = WarningFrame
    Reason_1.AnchorPoint = Vector2.new(0.5, 0.5)
    Reason_1.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    Reason_1.BackgroundTransparency = 1.000
    Reason_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Reason_1.BorderSizePixel = 0
    Reason_1.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Reason_1.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
    Reason_1.Visible = false
    Reason_1.Font = Enum.Font.Oswald
    Reason_1.Text = "-Chat Module was not found."
    Reason_1.TextColor3 = Color3.fromRGB(255, 0, 0)
    Reason_1.TextScaled = true
    Reason_1.TextSize = 50.000
    Reason_1.TextWrapped = true
    Reason_1.TextYAlignment = Enum.TextYAlignment.Top
    
    Reason_2.Name = "Reason_2"
    Reason_2.Parent = WarningFrame
    Reason_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Reason_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    Reason_2.BackgroundTransparency = 1.000
    Reason_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Reason_2.BorderSizePixel = 0
    Reason_2.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Reason_2.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
    Reason_2.Visible = false
    Reason_2.Font = Enum.Font.Oswald
    Reason_2.Text = "-MessagePosted function is invalid."
    Reason_2.TextColor3 = Color3.fromRGB(255, 0, 0)
    Reason_2.TextScaled = true
    Reason_2.TextSize = 50.000
    Reason_2.TextWrapped = true
    Reason_2.TextYAlignment = Enum.TextYAlignment.Top
    
    Trollge.Name = "Trollge"
    Trollge.Parent = WarningFrame
    Trollge.AnchorPoint = Vector2.new(0.5, 0.5)
    Trollge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Trollge.BackgroundTransparency = 1.000
    Trollge.Position = UDim2.new(0.5, 0, 0.670000017, 0)
    Trollge.Size = UDim2.new(0.449999988, 0, 0.5, 0)
    Trollge.Image = "rbxassetid://10104834800"
    
    UIPadding.Parent = WarningFrame
    UIPadding.PaddingTop = UDim.new(0, 10)
    
    Exit.MouseButton1Click:Connect(function()
        local UpTween = Tween(Background, .2, "Quint", "Out", {Position = UDim2.new(0.5, 0, 0.45, 0)})
        local DownTween = Tween(Background, 1, "Quad", "Out", {Position = UDim2.new(0.5, 0, 2, 0)})
        UpTween:Play()
        UpTween.Completed:wait()
        DownTween:Play()
        DownTween.Completed:wait()
        ACLWarning:Destroy()
    end)
end)()

local ExitCooldown = function()
    wait(3)
    local Tween = Tween(Bar, 5, "Quad", "InOut", {Size = UDim2.new(1, 0, 1, 0)})
    Tween:Play()
    Tween.Completed:wait()
    Loading:Destroy()
    Exit.Visible = true
end

local PlayerScripts = Player:WaitForChild("PlayerScripts")
local ChatMain = PlayerScripts:FindFirstChild("ChatMain", true) or false

if not ChatMain then
    local Timer = tick()
    repeat
        task.wait()
    until PlayerScripts:FindFirstChild("ChatMain", true) or tick() > (Timer + 3)
    ChatMain = PlayerScripts:FindFirstChild("ChatMain", true)
    if not ChatMain then
        ACLWarning.Enabled = true
        Reason_1.Visible = true
        ExitCooldown()
        return
    end
end

local PostMessage = require(ChatMain).MessagePosted

if not PostMessage then
    ACLWarning.Enabled = true
    Reason_2.Visible = true
    ExitCooldown()
    return
end

local MessageEvent = Instance.new("BindableEvent")
local OldFunctionHook
OldFunctionHook = hookfunction(PostMessage.fire, function(self, Message)
    if not checkcaller() and self == PostMessage then
        MessageEvent:Fire(Message)
        return
    end
    return OldFunctionHook(self, Message)
end)

if setfflag then
    setfflag("AbuseReportScreenshot", "False")
    setfflag("AbuseReportScreenshotPercentage", 0)
end

ChatFixToggle = false
ACLWarning:Destroy()
if OldSetting then
    StarterGui:SetCoreGuiEnabled(CoreGuiSettings[1], CoreGuiSettings[2])
end
Notify("Loaded Successfully", "Anti Chat and Screenshot Logger Loaded! CREDIT : sacred#9060", 15)
print(string.format("Anti Chat-Logger has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))
