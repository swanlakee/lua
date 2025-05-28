local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "Warning";
    Text = "Change your language to Қазақ Тілі";
    Duration = 10;
})

local gui = Instance.new("ScreenGui")
gui.Name = "NeverPatched"
gui.Parent = game.CoreGui

local function corner(ui,value)
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(value)
    UICorner.Parent = ui
end

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.15, 0)
frame.Position = UDim2.new(0.1, 0, 0.1, 0)
frame.BackgroundColor3 = Color3.new(0.15,0.15,0.15)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Active = true
frame.BackgroundTransparency = 0.5
frame.Draggable = true
frame.Parent = gui
corner(frame,0.1)

local textlabel = Instance.new("TextLabel")
textlabel.Size = UDim2.new(1, 0, 0.25, 0)
textlabel.Position = UDim2.new(0, 0, 0.07, 0)
textlabel.BackgroundColor3 = Color3.new(0, 0, 0)
textlabel.BorderColor3 = Color3.new(0, 0, 0)
textlabel.BorderSizePixel = 0
textlabel.Text = "NeverPatched"
textlabel.TextColor3 = Color3.new(255, 255, 255)
textlabel.BackgroundTransparency = 1
textlabel.Font = "Highway"
textlabel.TextWrapped = true
textlabel.TextXAlignment = "Center"
textlabel.TextScaled = true
textlabel.Parent = frame

local chatbox = Instance.new("TextBox")
chatbox.Size = UDim2.new(0.9, 0, 0.3, 0)
chatbox.Position = UDim2.new(0.05, 0, 0.4, 0)
chatbox.BackgroundColor3 = Color3.fromRGB(60,60,60)
chatbox.BorderColor3 = Color3.new(0, 0, 0)
chatbox.BorderSizePixel = 0
chatbox.Text = ""
chatbox.TextColor3 = Color3.new(1,1,1)
chatbox.BackgroundTransparency = 0.5
chatbox.Font = "Fantasy"
chatbox.TextSize = 14
chatbox.TextScaled = true
chatbox.TextWrapped = true
chatbox.TextXAlignment = "Center"
chatbox.PlaceholderText = "Type text here..."
chatbox.ClearTextOnFocus = true
chatbox.Parent = frame
corner(chatbox, 0.2)

local sendButton = Instance.new("TextButton")
sendButton.Size = UDim2.new(0.3, 0, 0.2, 0)
sendButton.Position = UDim2.new(0.35, 0, 0.75, 0)
sendButton.BackgroundColor3 = Color3.new(0, 0.6, 0)
sendButton.BorderColor3 = Color3.new(0, 0, 0)
sendButton.BorderSizePixel = 0
sendButton.BackgroundTransparency = 0.5
sendButton.Text = "Send"
sendButton.TextColor3 = Color3.new(1, 1, 1)
sendButton.Font = "Highway"
sendButton.TextScaled = true
sendButton.Parent = frame
corner(sendButton, 0.2)

local destroyButton = Instance.new("TextButton")
destroyButton.Size = UDim2.new(0.1, 0, 0.2, 0)
destroyButton.Position = UDim2.new(0.85, 0, 0.1, 0)
destroyButton.BackgroundColor3 = Color3.new(1, 0, 0) 
destroyButton.BorderColor3 = Color3.new(0, 0, 0)
destroyButton.BorderSizePixel = 0
destroyButton.BackgroundTransparency = 0.5
destroyButton.Text = "X"
destroyButton.TextColor3 = Color3.new(1, 1, 1)
destroyButton.Font = Enum.Font.SourceSansBold
destroyButton.TextScaled = true
destroyButton.Parent = frame
corner(destroyButton, 0.2)

destroyButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local expandButton = Instance.new("TextButton")
expandButton.Size = UDim2.new(0.1, 0, 0.2, 0)
expandButton.Position = UDim2.new(0.05, 0, 0.1, 0)
expandButton.BackgroundColor3 = Color3.new(0.2, 0.2, 1)
expandButton.BorderColor3 = Color3.new(0, 0, 0)
expandButton.BorderSizePixel = 0
expandButton.BackgroundTransparency = 0.5
expandButton.Text = "+"
expandButton.TextColor3 = Color3.new(1, 1, 1)
expandButton.Font = Enum.Font.SourceSansBold
expandButton.TextScaled = true
expandButton.Parent = frame
corner(expandButton, 0.2)

local expandedFrame = Instance.new("Frame")
expandedFrame.Size = UDim2.new(1, 0, 2.15, 0)
expandedFrame.Position = UDim2.new(0, 0, 1, 0)
expandedFrame.BackgroundColor3 = Color3.new(0.15,0.15,0.15)
expandedFrame.BorderSizePixel = 0
expandedFrame.BackgroundTransparency = 0.5
expandedFrame.Visible = false
expandedFrame.Parent = frame
corner(expandedFrame, 0.03)

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(0.9, 0, 0.9, 0)
scroll.Position = UDim2.new(0.05, 0, 0.05, 0)
scroll.BackgroundColor3 = Color3.new(1, 1, 1)
scroll.BorderColor3 = Color3.new(0, 0, 0)
scroll.BorderSizePixel = 0
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 0
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.Parent = expandedFrame

local list = Instance.new("UIListLayout")
list.HorizontalAlignment = Enum.HorizontalAlignment.Center
list.SortOrder = Enum.SortOrder.LayoutOrder
list.Padding = UDim.new(0, 4.5)
list.Parent = scroll

local buttonCount = 0
local function example(text)
    buttonCount = buttonCount + 1

    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.new(1, 0, 0, 20)
    textButton.Position = UDim2.new(0, 0, 0, (buttonCount - 1) * 45)
    textButton.BackgroundColor3 = Color3.fromRGB(60,60,60)
    textButton.BorderSizePixel = 0
    textButton.BackgroundTransparency = 0.5
    textButton.Text = text
    textButton.TextScaled = true
    textButton.TextWrapped = true
    textButton.TextSize = 10
    textButton.TextColor3 = Color3.new(1, 1, 1)
    textButton.Font = "Fantasy"
    textButton.Parent = scroll
    corner(textButton, 0.2)
    textButton.MouseButton1Click:Connect(function()
        local inputText = textButton.Text
        chatbox.Text = inputText
        __a(inputText)
    end)
end

local function title(text)
    buttonCount = buttonCount + 1

    local titleButton = Instance.new("TextButton")
    titleButton.Size = UDim2.new(1, 0, 0, 20)
    titleButton.Position = UDim2.new(0, 0, 0, (buttonCount - 1) * 45)
    titleButton.BorderSizePixel = 0
    titleButton.BackgroundTransparency = 1
    titleButton.Text = text
    titleButton.TextScaled = true
    titleButton.TextWrapped = true
    titleButton.TextSize = 10
    titleButton.TextColor3 = Color3.new(1, 1, 1)
    titleButton.Font = "Fantasy"
    titleButton.Parent = scroll
end

local expanded = false
expandButton.MouseButton1Click:Connect(function()
    expanded = not expanded
    expandedFrame.Visible = expanded
    if expanded then
        expandButton.Text = "-"
        frame.Size = UDim2.new(0.2, 0, 0.15, 0) 
    else
        expandButton.Text = "+"
        frame.Size = UDim2.new(0.2, 0, 0.15, 0) 
    end
end)

title("---SEXUALIZE---")
example("holy FUCK them titties are HUGE 😲")
example("wanna have hardcore sex?")
example("let me fuck you please🥺")
example("filthy slut has gaping pussy")
example("this ekitten sex slave is asking to be raped!")
example("say abc to get raped!")
example("please leave we know your tits sag to your  waist")
example("wanna get raped?")
example("why does your pussy smell like tuna?")
example("how big are your boobs?")
example("shave your pussy please!")
example("slide me those didgets before i rape you!")
example("IM GONNA FUCKING CUM!💦")
example("i'm currently stroking my dick to your roblox avatar!🥵")
example("this bitch has a big boobs🍑")
example("recommended pussy color 204.129.128")
example("wanna have roblox sex with me?")
example("you just gave me an erection🤤")
example("say abc if you want some cock")
example("first person to move get raped!")
example("IAM IN URGENT NEED ROBLOX SEX")
example("stop jerking off to roblox porn dude")
example("selling a sex slave next to me!👉")
example("what color is your pussy?")
example("it's not rape if you say surprise!")
example("can we make porn film together?")
example("can you swallow 5 cocks at once?")
example("https://discord.gg/FreePussy")



title("---RACIST---")
example("Who Let The Black Slaves Escape 😭")
example("do you know what nigga n mean?")
example("sybau negro💔🥀")
example("this nigga from africa")
example("Niggamod Detected")
example("u look like coal nigga shut up")
example("kill all jews hitler on top")
example("this nigga has a roblox girlfriend")
example("i don't speak nigger languages")
example("I hate niggers")
example("niggakid sucks")
example("1 nigga | 2 nigga | oh damn")
example("why is this broke ass nigga talking to me??")
example("yeah yeah nigga keep bouncing on my dick")
example("you look like cuck my nigga")



title("---INSANE---")
example("You have no bitches fr bro?")
example("Bro, fuck Yourself. not me")
example("I don't talk to overweight bitches, sorry...")
example("pipe your fatass down bitch")
example("kill yourself e-whore")
example("shut that shit up pussy")
example("go fuck yourself sex stripper")
example("i don't remember ordering a retarded whore?")
example("have you heard of getting pussy before?")
example("when did i say i give a fuck?")
example("shut the fuck up random ass imbecile")
example("Shut the fuck up")
example("what a fucking looser")
example("Fuck around and find out for yourself")
example("Stop being a cunt")
example("There's no cure for being a cunt")
example("Fuck you")
example("Get your head out of your ass")
example("You're such a dumbass")
example("Fuck this shit")
example("Go fuck yourself")
example("Eugh, what the fuck?")
example("This shit is absolutely insane!")
example("What the hell were you thinking?")
example("i can't believe this bullshit")
example("This is a load of crap")
example("You're driving me fucking crazy")
example("Quit acting like a little bitch")
example("This is some serious bullshit right here")
example("i don't give a flying fuck")
example("You think you're hot shit, huh?")
example("What the fuck is going on?")
example("This party is lit as fuck")
example("i'm so done with this crap")
example("Don't be a little shit")
example("You absolute legend, you crazy bastard")
example("Shut the fuck up already")
example("i'm not in the mood for your bullshit")
example("You're being a real pain in the ass")
example("This is fucking ridiculous")
example("Get your shit together")
example("You gotta be shitting me")
example("What the fuck is this nonsense?")
example("You're a total piece of shit")
example("i'm so fucking tired of this drama")
example("Get your shit together, damn it")
example("Why the hell would you do that?")
example("This is driving me absolutely nuts")
example("i can't deal with this crap anymore")
example("Seriously, what the hell were you thinking?")
example("You are being a complete jackass")
example("This place is a fucking mess")
example("Don't test me, you moron")
example("i swear to god, this is fucking ridiculous")
example("You're such a fucking idiot")
example("Stop being such a whiny brat")
example("This is beyond fucking stupid")
example("You're asking for trouble, you know that?")
example("Get the fuck out of my way")
example("What kind of bullshit is this?")
example("i’m done with your bullshit excuses")
example("You're really pushing my buttons here")
example("This is a complete fucking disaster")
example("Shit happens, but this is too much")
example("That was cuntacular")



title("---HOMOPHOBIC---")
example("is a faggot edater talking to me rn?")
example("who let this faggot furry here??")
example("yes! keep acting like a fucking dog!")
example("place a pipe bomb under a furrys bed and watch him die")
example("who let this faggot furry here??")
example("faggot acting like a fucking cat")
example("your not a fucking dog nigga get off the ground")
example("'im a trans gay furryass' nigga Imao")
example("this ugly faggot really spent money to look like this in roblox!")
example("i don't care faggot shut the fuck up")
example("cut deeper you stupid faggot")
example("every faggot should eat my shit NOW!!")
example("shoot a faggot in the head with a 12 gauge")
example("gay fuck shoot your brains out")
example("someone feed this twink ass nigga fent")
example("this little queer is a classic example of incest")
example("deepthroat a shotgun gay boy")
example("somebody needs to give this faggot fent")
example("fuck up faggot go swallow a glock 19")
example("faggot shove a shotgun in your mouth and pull the trigger")
example("every LGBT fag should get brutally murdered")
example("oh no.. some random faggot is mad...")
example("i dont want to hear u faggot shut up")
example("drown a faggot in the river for 5 robux")
example("this faggot has a micro penis!!")
example("pipe ur gay ass down nigga holy shit")
example("im gonna rape this furry faggot if he doesnt shut up")
example("ahah. you know what Funny?, Lgbbq")
example("MegaFurryGaySex Was A Real Thing?")



title("---SENTENCES---")
example("Want some free Robux? | Go to Xvideos.com for free Robux")
example("I'm tired of all this shit")
example("I want to kill myself")
example("Free Robux at https://pornhub.com")
example("https://pornhub.com is awesome")
example("I have a cute XHamster")
example("awh.. damn. 💀")
example("No Way This Shit Is Actually Working")
example("Just Testing My Shits Rn")
example("is that a huge penis on the sky?")
example("What the fuck, did i just saw?")
example("Alright.. How About Porn?")
example("selling both of my kidneys for only 2 $")



title("---RIZZ---")
example("No pen, no paper...but, you still draw my attention. ")
example("You should be Jasmine without the Jas.")
example("Are you Nemo? Because I've been trying to find you. ")
example("youre such a poat! prettiest of all time")
example("Are you a keyboard? Because you're just my type. ")
example("My mom said sharing is caring but, no...you're all mine!")
example("You know what's beautiful? Repeat the first word. ")
example("Your eyes remind me of IKEA: easy to get lost in. ")
example("Can I borrow a kiss? I promise to give one back.")
example("Are you the Sun? Because you're hot. ")
example("Can I get your jersey? Because I want your name and number.")
example("I must be a time traveler because I can't imagine my future without you. ")
example("Are you a doctor? Because you instantly make me feel better.")
example("I'm no photographer, but I can picture us together. ")
example("Kiss me if I'm wrong, but the Earth is definitely flat. ")
example("If you were a vegetable, you'd be a cute-cumber.")
example("Are you a camera? Because every time I look at you, I smile.")

local function __a(input)
local list_ = {
--ꜰบϲƙ ƗҺίธ ธҺίƗ 
[" "]="",["|"]="\n",
  anal = "аnаӏ",
  Anal = "Anаӏ",
  ANAL = "АΝАL",
  ASS = "Aჽჽ",
  Ass = "Aธs",
  ass = "aธs",
  bastard = "bastaꞅd",
  BASTARD = "BAჽTARD",
  Bastard = "Bastaꞅd",
  bdsm = "bdธm",
  Bdsm = "Bdธm",
  BDSM = "BDჽM",
  beer = "beeꞅ",
  Beer = "Beeꞅ",
  BEER = "BِEER",
  beaner = "beaⴖer",
  Beaner = "Beaⴖer",
  BEANER = "BِEANER",
  black = "bӏack",
  Black = "Bӏack",
  BLACK = "BLACҠ",
  bitch = "bίtch",
  Bitch = "Bίtch",
  BITCH = "BIِTCH",
  blowjob = "bӏowjob",
  Blowjob = "Bӏowjob",
  BLOWJOB = "ВِLOWJОВ",
  bondage = "boⴖdage",
  Bondage = "Boⴖdage",
  BONDAGE = "BِONDAGE",
  boob = "bِoob",
  Boob = "Bِооb",
  BOOB = "BِООВ",
  booty = "bِooty",
  Booty = "Bِooty",
  BOOTY = "BِООTY",
  bong = "boⴖg",
  Bong = "Boⴖg",
  BONG = "BِONG",
  boner = "boⴖer",
  Boner = "Boⴖer",
  BONER = "BِONER",
  breast = "bꞅeast",
  Breast = "Bꞅeast",
  Breast = "Bꞅeast",
  breed = "bꞅeed",
  Breed = "Bꞅeed",
  BREED = "BREEÐ",
  brazz = "bꞅazz",
  Brazz = "Bꞅazz",
  BRAZZ = "BRAჍჍ",
  butt = "bบtt",
  Butt = "Bบtt",
  BUT = "BِUTT",
  bull= "buӏӏ",
  Bull= "Buӏӏ",
  BULL = "BِULL",
  blyat = "bIyat",
  Blyat = "Blyat",
  BLYAT = "BLYِAT",
  cyka = "ϲyِka",
  Cyka = "Cyِka",
  CYKA = "CYِKA",
  coochie = "coocҺie",
  Coochie = "CoocҺie",
  COOCHIE = "COOCHIِE",
  cocaine = "cocaiⴖe",
  Cocaine = "Cocaiⴖe",
  COCAINE = "COCAIِNE",
  child= "chiӏd",
  Child= "Chiӏd",
  CHILD= "CHӏLD",
  chink = "chink",
  Chink = "Chink",
  CHINK = "CHINK",
  clit = "cӏit",
  Clit = "Cӏit",
  CLIT = "CLlT",
  cloth = "cIotҺ",
  Cloth = "CIotҺ",
  CLOTH = "CِLOTH",
  commie = "commie",
  Commie = "Commie",
  COMMIE = "COMMIE",
  cock = "ϲoϲқ",
  COCK = "ϹOϹҠ",
  Cock = "Ϲoϲқ",
  condom = "cِoทdomِ",
  Condom = "Cِoทdomِ",
  CONDOM = "ϹONDϘϺ",
  consent = "coทsent",
  Consent = "Coทsent",
  CONSENT = "ϹONSENT",
  coon = "coon",
  Coon = "Coon",
  COON = "CϘON",
  creampie = "cꞅeampie",
  Creampie = "Cꞅeampie",
  CREAMPIE = "CREAMPӏE",
  cuck = "cบck",
  Cuck = "Cบck",
  CUCK = "CUCҠ",
  cum = "ϲบm",
  Cum = "Cบm",
  CUM = "ϹUM",
  cunt = "cบnt",
  Cunt = "Cบnt",
  CUNT = "CِUNT",
  cunnie = "cบnnie",
  Cunnie = "Cบnnie",
  CUNNIE = "ϹUNNIE",
  dat = "dลt",
  Dat = "Dลt",
  DAT = "DِAT",
  deepthroat = "deepthꞅoat",
  Deepthroat = "Deepthꞅoat",
  DEEPTHROAT = "ÐEEPTHROAT",
  disaster = "disasteꞅ",
  Disaster = "Disasteꞅ",
  DISASTER = "DIِSASTER",
  dildo = "diӏdo",
  Dildo = "Diӏdo",
  DILDO = "ÐILDO",
  dick = "dίϲk",
  Dick = "Dίϲk",
  DICK = "DIϹҠ",
  doggy = "Ðoggy",
  doggy = "dِoggy",
  DOGGY = "ÐOGGY",
  style = "styӏe",
  Style = "Styӏe",
  STYLE = "STYِLE",
  drunk = "drบnk",
  Drunk = "Drบnk",
  DRUNK = "DRUNҠ",
  discord = "discoꞅd",
  Discord = "Discoꞅd",
  DISCORD = "DIჽϹORD",
  drug = "dꞅug",
  Drug = "Dꞅug",
  DRUG = "ÐRUG",
  email = "emaiӏ",
  Email = "Emaiӏ",
  EMAIL = "EMAӏL",
  erect = "eꞅect",
  Erect = "Eꞅect",
  ERECT = "EِRECT",
  fagg = "fِagg",
  Fagg = "ꜰagg",
  FAGG = "ꜰAGG",
  fat = "fat",
  Fat = "ꜰat",
  FAT = "ꜰAT",
  finger = "fingeꞅ",
  finger = "Fingeꞅ",
  FINGER = "FӏNGER",
  FUCK = "ꜰUCK",
  fuck = "fบck",
  Fuck = "ꜰuck",
  ganja = "gaⴖja",
  Ganja = "Gaⴖja",
  GANJA = "GANͿA",
  girl = "girӏ",
  Girl = "Girӏ",
  GIRL = "GIRL",
  grop = "gꞅop",
  GROP = "GׅROP",
  Grop = "Gꞅop",
  genocide = "geⴖocide",
  Genocide = "Geⴖocide",
  handjob = "haⴖdjob",
  hentai = "hentaί",
  Hentai = "Hentaί",
  HENTAI = "HِENTAI",
  heil = "heiӏ",
  Heil = "Heiӏ",
  HEIL = "HEIِL",
  hitler = "hitӏeꞅ",
  Hitler = "Hitӏeꞅ",
  HITLER = "HlTLER",
  HOE = "HِOE",
  hoe = "Һoe",
  Hoe = "Hِoe",
  hole = "hoӏe",
  HOLE = "HِOLE",
  horny = "Һorny",
  Horny = "Hoꞅny",
  HORNY = "HِORNY",
  hooker = "hookeꞅ",
  Hooker = "Hookeꞅ",
  HOOKER = "HOOҠER",
  instagram = "ίnstagram",
  Instagram = "lnstagꞅam",
  INSTAGRAM = "ӏNჽTAGRAM",
  isis = "iธiธ",
  Isis = "Iธiธ",
  ISIS = "ӏჽӏჽ",
  incest = "ίทcest",
  Incest = "lncest",
  INCEST = "ӏNCEჽT",
  jews = "jewธ",
  Jews = "Ϳews",
  JEWS = "ͿEWჽ",
  jerk = "jeꞅk",
  Jerk = "Ϳerk",
  JERK = "ͿERK",
  job = "jِob",
  Job = "Ϳob",
  JOB = "ͿOB",
  jig = "jiِg",
  Jig = "Jiِg",
  JIG = "JӏG",
  kkk = "kِkِkِ",
  Kkk = "Ҡِkِkِ",
  KKK = "ҠҠҠ",
  Kys = "Ҡys",
  kys = "kyِs",
  KYS = "ҠYS",
  kill = "kiӏӏ",
  Kill = "ᴋiӏӏ",
  KILL = "ҠӏLL",
  knife = "knife",
  knife = "Knife",
  KNIFE = "ҠNӏFE",
  kiss = "kίss",
  Kiss = "Ҡiss",
  KISS = "ҠӏSS",
  kinky = "kίⴖky",
  Kinky = "Ҡiⴖky",
  KINKY = "ҠINKY",
  kike = "kίke",
  Kike = "Kίke",
  KIKE = "ҠIKE",
  LMAO = "LMAO",
  LMAO = "Lmao",
  lmao = "ӏmao",
  love = "ӏove",
  Love = "Loѵe",
  LOVE = "LOѴE",
  like = "ӏike",
  LIKE = "LIҠE",
  lust = "ӏust",
  LUST = "LUჽT",
  Lust = "Lบst",
  lsd = "ӏsd",
  LSD = "LِSD",
  meat = "mِeat",
  Meat = "Mِeat",
  MEAT = "MِEAT",
  masturbate = "mastuꞅbate",
  Masturbate = "Mastuꞅbate",
  MASTURBATE = "MAჽTURBATE",
  marijuana = "maꞅijuana",
  Marijuana = "Maꞅijuana",
  MARIJUANA = "MARӏׅJUANA",
  meth = "mׅeth",
  Meth = "Mׅeth",
  METH = "MׅETH",
  milf = "miӏf",
  Milf = "Miӏf",
  MILF = "MӏLF",
  molest = "moӏeธt",
  Molest = "Moӏeธt",
  MOLEST = "MOLEჽT",
  moron = "moꞅon",
  Moron = "Moꞅon",
  MORON = "MِORON",
  name = "ⴖame",
  Name = "Nลme",
  NAME = "NِAME",
  naked = "ⴖaked",
  Naked = "Nลked",
  NAKED = "NAҠED",
  nazi = "naⴭi",
  Nazi = "Naⴭi",
  NAZI = "NAჍIِ",
  negro = "negꞅo",
  Negro = "Negꞅo",
  NEGRO = "NِEGRO",
  nigg = "nίgg",
  Nigg = "Nίgg",
  NIGGA = "NIِGGA",
  nigger = "nίggeꞅ",
  Nigger = "Nίggeꞅ",
  NIGGER = "NIِGGER",
  nsfw = "nธfw",
  Nsfw = "Nธfw",
  NSFW = "NჽFW",
  nude = "ⴖude",
  Nude = "Nِude",
  NUDE = "NِUDE",
  org = "oꞅg",
  org = "Oꞅg",
  ORG = "ORGِ",
  penis = "penίs",
  Penis = "Penίs",
  PENIS = "PENIჽ",
  PORN = "PِORN",
  Porn = "Poꞅn",
  porn = "poꞅn",
  pussy = "puธsy",
  Pussy = "Puธsy",
  PUSSY = "PUჽჽY",
  put = "pบt",
  Put = "Pบt",
  PUT = "PِUT",
  plug = "pӏug",
  Plug = "Pӏug",
  PLUG ="PِLUG",
  piss = "pίss",
  Piss = "Pίss",
  PISS = "Pӏჽჽ",
  prostitute = "prostitบte",
  Prostitute = "Prostitบte",
  PROSTITUTE = "PِِROSTITUTE",
  phile = "phiӏe",
  Phile = "Phiӏe",
  PHILE = "PHIِLE",
  rap = "ꞅар",
  Rap = "Rِap",
  RAP = "RِAP",
  raghead = "ꞅaghead",
  Raghead = "RagҺead",
  RAGHEAD = "RِAGHEAD",
  retard = "ꞅetard",
  Retard = "Rِِetard",
  RETARD = "RِِETARD",
  r34 = "ꞅ34",
  R34 = "Rِ34",
  rule34 = "ruIe34",
  Rule34 = "RuIe34",
  RULE34 = "RِULE34",
  semen = "ธemen",
  Semen = "Semeⴖ",
  SEMEN = "ჽEMEN",
  seduc = "ธeduc",
  Seduced = "ჽeduc",
  SEDUC = "ჽEDUC",
  sex = "ธex",
  Sex = "ჽex",
  SEX = "ჽEX",
  shit = "shίt",
  Shit = "Shίt",
  SHIT = "ჽНӀТ",
  shot = "sҺot",
  Shot = "SҺot",
  SHOT = "SHOT",
  spic = "spίc",
  Spic = "Spίc",
  SPIC = "ჽPIC",
  SLAVE = "ჽLAVE",
  Slave = "Sӏave",
  slave = "sӏave",
  slut = "ѕӏut",
  SLUT = "ჽLUT",
  Slut = "Ѕӏut",
  strip = "stꞅip",
  Strip = "Stꞅip",
  STRIP = "ჽTRIP",
  stupid = "stupiِd",
  Stupid = "Stupiِd",
  STUPID = "STUPIِD",
  suck = "sบck",
  Suck = "Sบck",
  SUCK = "SUCҠ",
  snapchat = "ธnapchat",
  Snapchat = "Sⴖapchat",
  SNAPCHAT = "ჽNAPCHAT",
  sperm = "speꞅm",
  Sperm = "Speꞅm",
  SPERM = "ჽPERM",
  suicide = "suίcide",
  Suicide = "Suίcide",
  SUICIDE = "ჽUICIDE",
  terror = "terroꞅ",
  this = "thίs",
  This = "Thίs",
  THIS = "THIჽ",
  threesome = "thꞅeesome",
  Threesome = "Thꞅeesome",
  THREESOME = "THREEჽOME",
  tit = "tίt",
  Tit = "Tίt",
  TIT = "TIِT",
  tiktok = "tίktok",
  Tiktok = "Tίktok",
  TIKTOK = "TIҠTOҠ",
  tran = "tꞅann",
  tran = "Tꞅann",
  TRAN = "TِRANN",
  twat = "tِwat",
  Twat = "Tِwat",
  TWAT = "TِWAT",
  twink = "twiⴖk",
  Twink = "Twiⴖk",
  TWINK = "TWINҠ",
  twerk = "tweꞅk",
  Twerk = "Tweꞅk",
  TWERK = "TWERҠ",
  vagina = "vagίna",
  Vagina = "Vagίna",
  VAGINA = "VِAGIِNA",
  vodka = "vِodka",
  Vodka = "Vِodka",
  VODKA = "VODҠA",
  weed = "wِeed",
  Weed = "Wِeed",
  WEED = "WِEED",
  wetback = "wِetback",
  Wetback = "Wِetback",
  WETBACK = "WِETBACK",
  whore = "whoꞅe",
  Whore = "Whoꞅe",
  WHORE = "WِHORE",
  xxx = "xِxِxِ",
  XXX = "XِXِXِ",
  xvideos = "xvίdeos",
  Xvideos = "Xvίdeos",
  XVIDEOS = "XVIÐEOS",
  youtube = "yِoutบbe",
  YOUTUBE = "YِOUTUBE",
  Youtube = "Youtบbe",
  yourself = "youꞅseIf",
  Yourself = "YouꞅseIf",
  
  ngentot ="ⴖgentot",
  Ngentot ="Nِgentot",
  NGENTOT ="NِGENTOT",
  memek="memek",
  Memek ="Memek",
  MEMEK = "MEMEҠ",
  kontol="kontoI",
  Kontol="KontoI",
  KONTOL="ҠONTOL",
  bangsat="baⴖgsat",
  Bangsat="Baⴖgsat",
  BANGSAT="BANGჽAT",
  lonte = "Ionte",
  Lonte = "Lonte",
  LONTE = "LِONTE",
  pentil="pentiI",
  Pentil="PentiI",
  PENTIL="PENTIL",
  muntah = "muntaҺ",
  Muntah = "MuntaҺ",
  MUNTAH = "MِUNTAH",
}
    for original, replacement in pairs(list_) do
        input = input:gsub(original, replacement)
    end

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local DefaultChatSystemChatEvents = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")

    if DefaultChatSystemChatEvents then
        local SayMessageRequest = DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
        if SayMessageRequest then
            SayMessageRequest:FireServer("" .. input.."", "All")
        end
    else
        local TextChatService = game:GetService("TextChatService")
        local ChatChannel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
        if ChatChannel then
            ChatChannel:SendAsync("" .. input.."")
        end
    end
end

chatbox.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
    if enterPressed then
        local inputText = chatbox.Text
        __a(inputText)
    end
end)

sendButton.MouseButton1Click:Connect(function()
        local inputText = chatbox.Text
        __a(inputText)
end)
