local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "Warning";
    Text = "Change your language to қазақ тілі!";
    Duration = 5; -- durasi dalam detik
})

local gui = Instance.new("ScreenGui")
gui.Name = "NeverG"
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
frame.BackgroundTransparency = 0
frame.Draggable = true
frame.Parent = gui

corner(frame,0.1)


local textlabel = Instance.new("TextLabel")
textlabel.Size = UDim2.new(1, 0, 0.25, 0)
textlabel.Position = UDim2.new(0, 0, 0.07, 0)
textlabel.BackgroundColor3 = Color3.new(0, 0, 0)
textlabel.BorderColor3 = Color3.new(0, 0, 0)
textlabel.BorderSizePixel = 0
textlabel.Text = " NeverPatched"
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
chatbox.BackgroundColor3 = Color3.new(0, 0, 0)
chatbox.BorderColor3 = Color3.new(0, 0, 0)
chatbox.BorderSizePixel = 0
chatbox.Text = ""
chatbox.TextColor3 = Color3.new(1,1,1)
chatbox.BackgroundTransparency = 0.7
chatbox.Font = "Fantasy"
chatbox.TextSize = 14
chatbox.TextScaled = true
chatbox.TextWrapped = true
chatbox.TextXAlignment = "Center"
chatbox.PlaceholderText = "Type text here..."
chatbox.ClearTextOnFocus = true
chatbox.TextScaled = true
chatbox.Parent = frame

-- Kirim Pesan Button
local sendButton = Instance.new("TextButton")
sendButton.Size = UDim2.new(0.3, 0, 0.2, 0)
sendButton.Position = UDim2.new(0.35, 0, 0.75, 0)
sendButton.BackgroundColor3 = Color3.new(0, 0.6, 0) -- Hijau
sendButton.BorderColor3 = Color3.new(0, 0, 0)
sendButton.BorderSizePixel = 0
sendButton.Text = "Send"
sendButton.TextColor3 = Color3.new(1, 1, 1)
sendButton.Font = "Highway"
sendButton.TextScaled = true
sendButton.Parent = frame

corner(sendButton, 0.2)


-- Destroy Button
local destroyButton = Instance.new("TextButton")
destroyButton.Size = UDim2.new(0.1, 0, 0.2, 0)
destroyButton.Position = UDim2.new(0.85, 0, 0.1, 0)
destroyButton.BackgroundColor3 = Color3.new(1, 0, 0) -- Red button
destroyButton.BorderColor3 = Color3.new(0, 0, 0)
destroyButton.BorderSizePixel = 0
destroyButton.Text = "X"
destroyButton.TextColor3 = Color3.new(1, 1, 1)
destroyButton.Font = Enum.Font.SourceSansBold
destroyButton.TextScaled = true
destroyButton.Parent = frame

corner(destroyButton, 0.2)

destroyButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- Expand Button
local expandButton = Instance.new("TextButton")
expandButton.Size = UDim2.new(0.1, 0, 0.2, 0)
expandButton.Position = UDim2.new(0.05, 0, 0.1, 0)
expandButton.BackgroundColor3 = Color3.new(0.2, 0.2, 1) -- Biru
expandButton.BorderColor3 = Color3.new(0, 0, 0)
expandButton.BorderSizePixel = 0
expandButton.Text = "+"
expandButton.TextColor3 = Color3.new(1, 1, 1)
expandButton.Font = Enum.Font.SourceSansBold
expandButton.TextScaled = true
expandButton.Parent = frame

corner(expandButton, 0.2)

-- UI Tambahan (disembunyikan dulu)
local expandedFrame = Instance.new("Frame")
expandedFrame.Size = UDim2.new(1, 0, 2.5, 0)
expandedFrame.Position = UDim2.new(0, 0, 1, 0)
expandedFrame.BackgroundColor3 = Color3.new(0.15,0.15,0.15)
expandedFrame.BorderSizePixel = 0
expandedFrame.Visible = false
expandedFrame.Parent = frame
corner(expandedFrame, 0.03)

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(0.85, 0, 0.85, 0)
scroll.Position = UDim2.new(0.08, 0, 0.09, 0)
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
list.Padding = UDim.new(0, 10)
list.Parent = scroll

local buttonCount = 0
local function example(text)
    buttonCount = buttonCount + 1

    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.new(1, 0, 0, 18)
    textButton.Position = UDim2.new(0, 0, 0, (buttonCount - 1) * 45)
    textButton.BackgroundColor3 = Color3.fromRGB(60,60,60)
    textButton.BorderSizePixel = 0
    textButton.Text = text
    textButton.TextScaled = true
    textButton.TextWrapped = true
    textButton.TextSize = 10
    textButton.TextColor3 = Color3.new(1, 1, 1)
    textButton.Font = Enum.Font.Arial
    textButton.Parent = scroll

    textButton.MouseButton1Click:Connect(function()
        local inputText = textButton.Text
        chatbox.Text = inputText
        __a(inputText)
    end)
end

example("I Rape Children")
example("i am pedophile")
example("let me fuck you please")
example("filthy slut has gaping pussy")
example("this ekitten sex slave is asking to be raped!")
example("say abc to get raped!")
example("please leave we know your tits sag to your waist")
example("wanna get raped?")
example("why does your pussy smell like tuna?")
example("how big are your boobs?")
example("shave your pussy please!")
example("slide me those didgets before i rape you!")
example("IM GONNA FUCKING CUM!")
example("i'm currently stroking my dick to your roblox avatar!")
example("wanna have roblox sex with me?")
example("you just gave me an erection")
example("say abc if you want some cock")
example("first person to move get raped!")
example("IAM IN URGENT NEED ROBLOX SEX")
example("stop jerking off to roblox porn dude")
example("selling a sex slave next to me!")
example("what color is your pussy?")
example("it's not rape if you say surprise!")
example("can we make porn film together?")
example("this nigga has a roblox girlfriend")
example("have you heard of getting pussy before?")
example("what a fucking looser")
example("is a faggot edater talking to me rn?")
example("you look like cuck my nigga")
example("can you swallow 5 cocks at once?")
example("Big Boobs")
example("niggakid sucks")
example("print(\"kill all nigga\")")
example("ANAL SEX")
example("https://discord.gg/FreePussy")
example("Big Black Cock")
example("nigga executor|https://nigga.gg")
example("Shut the fuck up")
example("Dafuckboom is a nigger monkey")
example("Shitbidick toilet sucks")
example("Free Robux at https://animeh.to")
example("this bitch has a big boobs")
example("recommended pussy color 204.129.128")
example("this nigga from africa")
example("Niggamod Detected")
example("Fuck around and find out for yourself")
example("Want some free Robux?| Go to Xvideos.com for free Robux")
example("I'm tired of all this shit")
example("That was cuntacular")
example("Stop being a cunt")
example("Fuck this shit")
example("Go fuck yourself")
example("I want to kill myself")
example("There's no cure for being a cunt")
example("Fuck you")
example("Fuck you | with love")
example("1 nigga | 2 nigga | oh damn")
example("https://xvideos.com")
example("https://pornhub.com is awesome")
example("I have a cute XHamster")
example("https://nhentai.net")
example("https://nekopoi.care")
example("E621? Eugh, what the fuck?")
example("This shit is absolutely insane!")
example("What the hell were you thinking?")
example("You're such a dumbass")
example("i can't believe this bullshit")
example("This is a load of crap")
example("Get your head out of your ass")
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

local expanded = false
expandButton.MouseButton1Click:Connect(function()
    expanded = not expanded
    expandedFrame.Visible = expanded
    if expanded then
        expandButton.Text = "-"
        frame.Size = UDim2.new(0.2, 0, 0.15, 0) -- Perbesar untuk beri ruang
    else
        expandButton.Text = "+"
        frame.Size = UDim2.new(0.2, 0, 0.15, 0) -- Kembali ke ukuran awal
    end
end)

local function __a(input)
local list_ = {
-- don't change
[" "]="",["|"]="\r",
-- change if you want
["〪"]="〪",-- "method"
-- orK
["@$"]="〪",

anal = "аnаӏ",
  ANAL = "АΝАL",
  Anna = "Anna",
  anti = "anti",
  ANTI = "ANTI",
  ASS = "AِSS",
  ass = "aِss",
  asses = "assesِ",
  ASSES = "ASSES",
  asshole = "aِsshِoӏe",
  ASSHOLE = "AِЅЅНОLЕ",
  al = "al",
  bastard = "bِastard",
  BASTARD = "BAჽTARD",
  Bastard = "Bِastard",
  bdsm = "bِdsm",
  BDSM = "BDჽM",
  beaner = "beaⴖer",
  BEANER = "BِEANER",
  bisexual = "bisِexual",
  BISEXUAL = "BIჽEXUAL",
  black = "bӏack",
  bitch = "biِtch",
  bitches = "biِtches",
  BITCHES = "BِITCHES",
  BITCH = "BِITCH",
  blox = "blox",
  blowjob = "bӏowjob",
  blowjobs = "bӏowjobs",
  BLOWJOB = "В〪LOWJОВ",
  bondage = "boⴖdage",
  BONDAGE = "BِONDAGE",
  boob = "bِооb",
  Boob = "Bِооb",
  boobies = "bِооbies",
  boobs = "bِооbs",
  BOOBS = "BِООВЅ",
  BOOB = "BِООВ",
  booty = "bِooty",
  BOOTY = "BِООTY",
  bong = "boⴖg",
  BONG = "BِONG",
  boner = "boⴖer",
  Boner = "Boⴖer",
  BONER = "BِONER",
  breast = "breast",
  breasts = "bꞅeasts",
  breed = "breed",
  bypass = "bypass",
  brazz = "braⴭⴭ",
  BRAZZ = "BRAჍჍ",
  butt = "bِutt",
  BUT = "BِUTT",
  bullshit = "bِullshِit",
  Bullshit = "Bِullshِit",
  call = "call",
  chong = "choⴖg",
  coochie = "cِِoochie",
  cocaine = "cocaiⴖe",
  childfucker = "childfบcker",
  CHILDFUCKER = "CHILDꜰUCKER",
  chink = "chink",
  CHINK = "CHINK",
  clit = "cӏit",
  CLIT = "CLlT",
  cloth = "cِloth",
  CLOTH = "CِLOTH",
  commie = "commie",
  commies = "commies",
  COMMIE = "COMMIE",
  COMMIES = "COMMIES",
  cock = "cِock",
  COCK = "CِОСK",
  Cock = "Cِосk",
  cocksuck = "cِِосksِuck",
  COCKSUCK = "CِОСKႽUCK",
  cocksucker = "cِِосksِucker",
  COCKSUCKER = "CِОСKSِUСKЕR",
  condom = "coⴖdom",
  consent = "coⴖsent",
  consented = "coⴖsented",
  CONDOM = "CِONDOM",
  CONSENT = "CِONSENT",
  CONSENTED = "CِONSENTED",
  coon = "coon",
  crack = "crack",
  creampie = "cِreampie",
  Creampie = "ᲃreampie",
  CREAMPIE = "ᲃREAMPIE",
  cuck = "cบck",
  Cuck = "Cบck",
  CUCK = "CِUCK",
  cum = "cบm",
  ["CUM"] = "CِUM",
  cumming = "cบmming",
  CUMMING = "CِUMMING",
  cumslut = "cบmsӏut",
  CUMSLUT = "CِUMჽLUT",
  cunt = "cบnt",
  cunnie = "cบnnie",
  CUNNIE = "ᲃUNNIE",
  cunts = "cบnts",
  CUNT = "ᲃUNT",
  chair = "chair",
  ching = "ching",
  deepthroat = "deepthꞅoat",
  DEEPTHROAT = "ÐEEPTHROAT",
  deadass = "dِeadass",
  disaster = "diِsaster",
  Disaster = "Diِsaster",
  DISASTER = "DIِSASTER",
  dirty = "dirty",
  DIRTY = "DIRTY",
  dildo = "diӏdo",
  DILDO = "ÐILDO",
  DICK = "ÐICK",
  dick = "diِсk",
  dogfucker = "dogfบcker",
  DOGFUCKER = "DOGꜰUCKER",
  drug = "drug",
  drunk = "drบnk",
  discord = "discoꞅd",
  DISCORD = "ÐISCORD",
  drugs = "drบgs",
  DRUG = "DRUG",
  DRUGS = "ÐRUGS",
  dumbass = "dบmbass",
  DUMBASS = "ÐUMBASS",
  email = "emaiӏ",
  erect = "eꞅect",
  ERECT = "EِRECT",
  fagg = "fِagg",
  Fagg = "ꜰagg",
  faggot = "fِaggot",
  Faggot = "ꜰaggot",
  FAGGOT = "ꜰAGGOT",
  faggots = "fِaggots",
  FAGGOTS = "ꜰAGGOTS",
  fags = "fags",
  fatass = "fِatass",
  Fat = "ꜰat",
  FAT = "ꜰAT",
  Fatass = "Fِatass",
  fatasses = "fatasses",
  FATASS = "ꜰATASS",
  fi = "fi",
  FI = "FI",
  fl = "fl",
  FUCK = "ꜰUCK",
  fuck = "fบck",
  Fuck = "ꜰuck",
  fuckable = "fบckable",
  FUCKABLE = "ꜰUCKABLE",
  fuckboy = "fบckboy",
  Fuckboy = "ꜰuckboy",
  FUCKBOY = "ꜰUCKBOY",
  fucked = "fบcked",
  fucker = "fบcker",
  fucks = "fบcks",
  Fucked = "ꜰucked",
  Fucker = "ꜰucker",
  Fucks = "ꜰucks",
  FUCKED = "ꜰUCKED",
  FUCKER = "ꜰUCKER",
  FUCKS = "ꜰUCKS",
  fucktard = "fบcktard",
  Fucktard = "ꜰucktard",
  FUCKTARD = "ꜰUCKTARD",
  fucktoy = "fบcktoy",
  FUCKTOY = "ꜰUCKTOY",
  Fucktoy = "ꜰucktoy",
  give = "give",
  girl = "girӏ",
  Girl = "Girӏ",
  GIRL = "GIRL",
  grop = "gꞅop",
  GROP = "GׅROP",
  Grop = "Gꞅop",
  gender = "geⴖder",
  Gender = "Geⴖder",
  genocide = "geⴖocide",
  Genocide = "Geⴖocide",
  google = "googӏe",
  Google = "Googӏe",
  have = "have",
  handjob = "haⴖdjob",
  heil = "heiӏ",
  hentai = "heⴖtai",
  Hentai = "Heⴖtai",
  HENTAI = "HِENTAI",
  Heil = "Heiӏ",
  HEIL = "HEIL",
  hitler = "hitӏer",
  Hitler = "Hitӏer",
  HEIL = "HِEIL",
  HITLER = "HِITLER",
  HOE = "HOE",
  hoe = "hoe",
  holy = "holy",
  hole = "hoӏe",
  HOLE = "HِOLE",
  homosexual = "homosِexual",
  Homosexual = "Homosِexual",
  hooker = "hookeꞅ",
  horny = "horⴖy",
  Hooker = "Hookeꞅ",
  Horny = "Horⴖy",
  HOMOSEXUAL = "HOMOSِEXUAL",
  HOOKER = "HِOOKER",
  HORNY = "HِORNY",
  instagram = "iⴖstagram",
  INSTAGRAM = "IِNSTAGRAM",
  isis = "iِsِiِsِ",
  im = "im",
  ip = "ip",
  IP = "IP",
  id = "id",
  il = "il",
  is = "is",
  le = "le",
  ig = "ig",
  iv = "iv",
  ie = "ie",
  ll = "ll",
  ir = "ir",
  ii = "ii",
  ly = "ly",
  lo = "lo",
  im = "im",
  IM = "IM",
  ld = "ld",
  ft = "ft",
  ic = "ic",
  ix = "ix",
  INE = "INE",
  ING = "ING",
  jesus = "jesus",
  Jesus = "Jesus",
  jackass = "jِackass",
  JACKASS = "JِACKASS",
  jungle = "jungӏe",
  jew = "jew",
  jews = "jews",
  jerking = "jِerking",
  JERKMATE = "JِERKMATE",
  job = "jِob",
  jig = "jِig",
  jigaboo = "jِigaboo",
  jiggaboo = "jِiggaboo",
  Jig = "Jِig",
  kkk = "kِkِkِ",
  KKK = "KِKِKِ",
  kys = "kyِs",
  kill = "kill",
  Kill = "ᴋill",
  KILL = "KِILL",
  killing = "killing",
  killed = "kiӏӏed",
  KILLING = "KILLING",
  KILLED = "KِILLED",
  knife = "knife",
  KNIFE = "KNIFE",
  kiss = "kiss",
  kissing = "kissing",
  KISS = "KISS",
  KISSING = "KISSING",
  kinky = "kiⴖky",
  kike = "kِike",
  KINKY = "Kiⴖky",
  lap = "ӏap",
  LMAO = "LMAO",
  lmao = "ӏmao",
  love = "ӏove",
  like = "like",
  LIKE = "LIKE",
  luck = "luck",
  lust = "ӏust",
  LUST = "LِUST",
  Lust = "Lบst",
  liberal = "liberal",
  LIBERAL = "LIBERAL",
  Liberal = "Liberal",
  lsd = "ӏsd",
  LSD = "LِSD",
  lgbtq = "ӏgbtq",
  mexican = "mexican",
  MEXICAN = "MEXICAN",
  myass = "myaِss",
  MYASS = "MYAِSS",
  mississippi = "mississippi",
  MISSISSIPPI = "MISSISSIPPI",
  milf = "miӏf",
  Milf = "Miӏf",
  molest = "mِolest",
  Molest = "Mِolest",
  MOLEST = "MOLEჽT",
  motherfucker = "motherfบcker",
  Motherfucker = "Motherfบcker",
  motherfucking = "motherfบcking",
  MOTHERFUCKER = "MOTHERꜰUCKER",
  MOTHERFUCKING = "MOTHERꜰUCKING",
  moron = "mِoron",
  Moron = "Mِoron",
  MORON = "MِORON",
  naked = "ⴖaked",
  Naked = "Nِaked",
  nazi = "naⴭi",
  NAZI = "NAჍI",
  negro = "ⴖegro",
  Negro = "Nِegro",
  negrophobia = "ⴖegrophobia",
  negroes = "ⴖegroes",
  NAKED = "NِAKED",
  NEGRO = "NِEGRO",
  NEGROES = "NِEGROES",
  nice = "nice",
  NICE = "NICE",
  nigga = "ⴖiِgga",
  NIGGA = "NlGGA",
  Nigga = "Niِgga",
  nigg = "ⴖiِgg",
  niger = "ⴖiger",
  nigeria = "ⴖigeria",
  niglet = "nigӏet",
  niglets = "nigӏetѕ",
  nigger = "ⴖigger",
  niggers = "nِiggers",
  NIGGER = "NِIGGER",
  NIGGERS = "NِِIGGERS",
  ["Nِiggerჽex"] = "NiggerSex",
  nsfw = "ⴖsfw",
  Nsfw = "Nِsfw",
  nude = "ⴖude",
  Nude = "Nِude",
  nudes = "ⴖudes",
  Nudes = "Nِudes",
  NSFW = "NِSFW",
  NUDE = "NِUDE",
  NUDES = "ΝِUDES",
  orgy = "oꞅgy",
  ORGY = "OِRGY",
  penis = "eⴖis",
  PENIS = "PENIჽ",
  PORNHUB = "PِORNHUB",
  PORN = "PِORN",
  Porn = "Porⴖ",
  porn = "porⴖ",
  power = "pِower",
  POWER = "PِOWER",
  pussy = "pบssyِ",
  Pussy = "Pบssyِ",
  PUSSY = "PUჽჽY",
  put = "pِut",
  Put = "Pِut",
  PUT = "PِUT",
  plug = "pِlug",
  PLUG ="PِLUG",
  prostitute = "prostitบte",
  PROSTITUTE = "PِِROSTITUTE",
  pick = "pick",
  phile = "phiӏe",
  pedophile = "pedophiӏe",
  racist = "racist",
  rape = "ꞅаре",
  Rape = "Rِаре",
  RAPE = "RِАРЕ",
  ["raped"] = "rِаpеdِ",
  ["Raped"] = "Rِаpеdِ",
  ["RAPED"] = "RАPЕD",
  raping = "rapiⴖg",
  rapist = "rаріѕt",
  rapists = "rapіѕtѕ",
  RAPIST = "RАPӀЅТ",
  Raping = "Rapiⴖg",
  Rapist = "Rаріѕt",
  raghead = "ꞅaghead",
  Raghead = "Rِaghead",
  RAGHEAD = "RِAGHEAD",
  redskin = "redskiⴖ",
  Redskin = "Redskiⴖ",
  retard = "ꞅetard",
  RETARD = "RِِETARD",
  roblox = "roblox",
  republican = "republican",
  Republican = "Republican",
  says = "sِays",
  Says = "Sِays",
  SAYS = "SِAYS",
  script = "script",
  semen = "semeⴖ",
  Semen = "Semeⴖ",
  SEMEN = "ჽEMEN",
  seduc = "sِeduc",
  Seduced = "ჽeduc",
  SEDUC = "SEDUC",
  sex = "sِex",
  Sex = "ჽex",
  SEX = "ჽEX",
  sexist = "sِexist",
  sext = "sِext",
  sextoy = "sِextoy",
  sexual = "sِexual",
  sexy = "sِexy",
  sexdoll = "sِexdoll",
  Sexdoll = "Sِexdoll",
  shit = "shiِt",
  Shit = "Shiِt",
  SHIT = "ჽНӀТ",
  should = "should",
  shot = "sِhot",
  Shot = "ჽhot",
  spic = "sِpic",
  Spic = "ჽpic",
  SPIC = "ჽPIC",
  SIEG = "SIEG",
  SLAVE = "ჽLAVE",
  slave = "sӏave",
  SLAVERY = "ჽLAVERY",
  SLAVES = "ჽLAVES",
  Slave = "Sӏave",
  slur = "ѕlur",
  slut = "ѕӏut",
  SLUT = "ჽLUT",
  Slut = "Ѕӏut",
  strip = "striِp",
  STRIP = "ჽTRIP",
  sucker = "sบcker",
  Sucker = "Sบcker",
  SUCKER = "ჽUCKER",
  SUCKING = "SUCKING",
  snapchat = "sⴖapchat",
  Snapchat = "Sⴖapchat",
  sperm = "sِperm",
  Sperm = "ჽperm",
  sperms = "sِperms",
  SNAPCHAT = "ჽNAPCHAT",
  SPERM = "ჽPERM",
  stupid = "stupiِd",
  suicide = "sบicide",
  TARD = "TِARD",
  terrorist = "tِerrorist",
  terrorism = "tِerrorism",
  this = "thiِs",
  This = "Thiِs",
  THIS = "THIჽ",
  threesome = "tِhreesome",
  Threesome = "Tِhreesome",
  THREESOME = "THREEჽOME",
  thong = "thoⴖg",
  tits = "tiِts",
  titt = "tiِtt",
  titties = "tiِttiِes",
  TITTIES = "TِITTIES",
  Titt = "Tiِtt",
  Tits = "Tiِts",
  tiktok = "tiktok",
  TONIGHT = "TONIGHT",
  tranny = "traⴖⴖy",
  trannie = "traⴖⴖie",
  TRANNY = "TِRANNY",
  TRANNIE = "TRANNlE",
  TRUMP = "TRUMР",
  trump = "trumр",
  twat = "tِwat",
  Twat = "Tِwat",
  TWAT = "ِTِWAT",
  twink = "twiⴖk",
  twinks = "twinks",
  vagina = "vagiⴖa",
  Vagina = "Vagiⴖa",
  weed = "wِeed",
  Weed = "Wِeed",
  WEED = "WِEED",
  well = "well",
  wetback = "wِetback",
  Wetback = "Wِetback",
  WETBACK = "WِETBACK",
  whore = "wِhore",
  Whore = "Wِhore",
  whores = "wِhores",
  Whores = "Wِhores",
  WHORE = "WِHORE",
  white = "wһіtе",
  White = "Wһіtе",
  xxx = "xِxِxِ",
  XXX = "XِXِXِ",
  xvideos = "xviِdeos",
  Xvideos = "Xviِdeos",
  XVIDEOS = "XVIÐEOS",
  youtube = "youtบbe",
  YOUTUBE = "YِOUTUBE",
  Youtube = "Youtบbe",
  yourself = "yِourself",
  zoophile = "zoophiIe",

        --indo
        ngentot ="ⴖgentot",
        Ngentot ="Nِgentot",
        NGENTOT ="NِGENTOT",
        memek="memek",
        Memek ="Memek",
        MEMEK = "MِEMEK",
        kontol="kontoI",
        Kontol="KontoI",
        KONTOL="KِONTOL",
        bangsat="bِangsat",
        Bangsat="Bِangsat",
        BANGSAT="BِANGSAT",
        pentil="pentIl",
        Pentil="PentIl",
        PENTIL="PENTIL",
        --web
        ["e621"]="eِ621",
        ["E621"]="Eِ621",
        ["r34"]="rِ34",
        ["R34"]="Rِ34",
        ["rule34"]="rِule34",
        ["Rule34"]="Rِule34",
        ["RULE34"]="RِULE34",
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

-- Aksi tombol kirim
sendButton.MouseButton1Click:Connect(function()
        local inputText = chatbox.Text
        __a(inputText)
end)
