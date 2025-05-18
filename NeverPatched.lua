local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "Warning";
    Text = "Change your language to Slovenski!";
    Duration = 5;
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
frame.Size = UDim2.new(0.2, 0, 0.18, 0)
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
chatbox.TextScaled = true
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
expandedFrame.Size = UDim2.new(1, 0, 1.8, 0)
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

local expanded = false
expandButton.MouseButton1Click:Connect(function()
    expanded = not expanded
    expandedFrame.Visible = expanded
    if expanded then
        expandButton.Text = "-"
        frame.Size = UDim2.new(0.2, 0, 0.18, 0) 
    else
        expandButton.Text = "+"
        frame.Size = UDim2.new(0.2, 0, 0.18, 0) 
    end
end)

example("holy FUCK them titties are HUGE")
example("anyone wanna have hardcode sex?")
example("let me fuck you please")
example("filthy slut has gaping pussy")
example("this ekitten sex slave is asking to be raped!")
example("say abc to get raped!")
example("please leave we know your tits sag to your  waist")
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
example("can you swallow 5 cocks at once?")
example("this nigga has a roblox girlfriend")
example("have you heard of getting pussy before?")
example("what a fucking looser")
example("is a faggot edater talking to me rn?")
example("you look like cuck my nigga")
example("nigga acting like a fucking cat")
example("who let this faggot furry here??")
example("yes! keep acting like a fucking dog!")
example("place a pipe bomb under a furrys bed and watch him die")
example("who let this faggot furry here??")
example("nigga acting like a fucking cat")
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
example("I hate niggers")
example("niggakid sucks")
example("https://discord.gg/FreePussy")
example("Big Black Cock")
example("nigga executor | https://nigga.gg")
example("Shut the fuck up")
example("Dafuckboom is a nigger monkey")
example("Shitbidick toilet sucks")
example("Free Robux at https://pornhub.com")
example("this bitch has a big boobs")
example("recommended pussy color 204.129.128")
example("this nigga from africa")
example("Niggamod Detected")
example("Fuck around and find out for yourself")
example("Want some free Robux? | Go to Xvideos.com for free Robux")
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
example("https://pornhub.com is awesome")
example("I have a cute XHamster")
example("Eugh, what the fuck?")
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
example("No pen, no paper...but, you still draw my attention. ")
example("You should be Jasmine without the Jas.")
example("Are you water? Because I'd die without you")
example("Are you Nemo? Because I've been trying to find you. ")
example("youre such a poat! prettiest of all time")
example("Are you a keyboard? Because you're just my type. ")
example("My mom said sharing is caring but, no...you're all mine!")
example("Are you a light? Because you always make me feel bright. ")
example("You know what's beautiful? Repeat the first word. ")
example("Your eyes remind me of IKEA: easy to get lost in. ")
example("Can I borrow a kiss? I promise to give one back.")
example("Are you the Sun? Because you're hot. ")
example("Are you a vape? Because I'd never use you. ")
example("Can I get your jersey? Because I want your name and number.")
example("I must be a time traveler because I can't imagine my future without you. ")
example("Are you a doctor? Because you instantly make me feel better.")
example("I'm no photographer, but I can picture us together. ")
example("Kiss me if I'm wrong, but the Earth is definitely flat. ")
example("If you were a vegetable, you'd be a cute-cumber.")
example("Are you a camera? Because every time I look at you, I smile.")

local function __a(input)
local list_ = {

[" "]="",["|"]="\n",
  anal = "аnаӏ",
  Anal = "Anаӏ",
  ANAL = "АΝАL",
  anti = "anti",
  ANTI = "ANTI",
  ASS = "Aჽჽ",
  ass = "aธs",
  bastard = "baธtard",
  BASTARD = "BAჽTARD",
  Bastard = "Baธtard",
  bdsm = "bdธm",
  BDSM = "BDჽM",
  beaner = "beaⴖer",
  BEANER = "BِEANER",
  black = "bӏack",
  Black = "Bӏack",
  BLACK = "BLACϏ",
  bitch = "biِtch",
  Bitch = "Biِtch",
  BITCH = "BIِTCH",
  blox = "bӏox",
  Blox = "Bӏox",
  blowjob = "bӏowjob",
  BLOWJOB = "ВِLOWJОВ",
  bondage = "boⴖdage",
  BONDAGE = "BِONDAGE",
  boob = "bِооb",
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
  breed = "bꞅeed",
  brazz = "braⴭⴭ",
  Brazz = "Braⴭⴭ",
  BRAZZ = "BRAჍჍ",
  butt = "bِutt",
  BUT = "BِUTT",
  bull= "buӏӏ",
  Bull= "Buӏӏ",
  BULL = "BِULL",
  call = "caӏӏ",
  chong = "choⴖg",
  coochie = "cِِoochie",
  cocaine = "cocaiⴖe",
  child= "chiӏd",
  CHILD= "CHӏLD",
  chink = "chink",
  CHINK = "CHINK",
  clit = "cӏit",
  CLIT = "CLlT",
  cloth = "cِloth",
  CLOTH = "CِLOTH",
  commie = "commie",
  COMMIE = "COMMIE",
  cock = "cِock",
  COCK = "COCϏ",
  Cock = "Cِосk",
  condom = "coⴖdom",
  Condom = "Coⴖdom",
  consent = "coⴖsent",
  consented = "coⴖsented",
  CONDOM = "CِONDOM",
  CONSENT = "CِONSENT",
  CONSENTED = "CِONSENTED",
  coon = "coon",
  crack = "crack",
  creampie = "cꞅeampie",
  Creampie = "Cꞅeampie",
  CREAMPIE = "CREAMPӏE",
  cuck = "cบck",
  Cuck = "Cบck",
  CUCK = "CUCϏ",
  cum = "cบm",
  CUM = "CِUM",
  cumming = "cบmming",
  CUMMING = "CِUMMING",
  cumslut = "cบmsӏut",
  CUMSLUT = "CِUMჽLUT",
  cunt = "cบnt",
  cunnie = "cบnnie",
  CUNNIE = "CِUNNIE",
  CUNT = "CِUNT",
  chair = "chair",
  ching = "ching",
  deepthroat = "deepthꞅoat",
  DEEPTHROAT = "ÐEEPTHROAT",
  disaster = "diِsaster",
  Disaster = "Diِsaster",
  DISASTER = "DIِSASTER",
  dirty = "dirty",
  DIRTY = "DӏRTY",
  dildo = "diӏdo",
  DILDO = "ÐILDO",
  DICK = "ÐICK",
  di = "diِ",
  Di = "Diِ",
  doggy = "Ðoggy",
  doggy = "dِoggy",
  DOGGY = "ÐOGGY",
  style = "styӏe",
  STYLE = "STYِLE",
  drunk = "drบnk",
  discord = "discoꞅd",
  Discord = "Discoꞅd",
  DISCORD = "DIჽCORD",
  drug = "drบg",
  Drug = "Drบg",
  DRUG = "ÐRUG",
  email = "emaiӏ",
  Email = "Emaiӏ",
  EMAIL = "EMAӏL",
  erect = "eꞅect",
  Erect = "Eꞅect",
  ERECT = "EِRECT",
  fagg = "fِagg",
  Fagg = "ꜰagg",
  faggot = "fِaggot",
  Faggot = "ꜰaggot",
  FAGGOT = "ꜰAGGOT",
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
  GANJA = "GׅANJA",
  girl = "girӏ",
  Girl = "Girӏ",
  GIRL = "GIRL",
  grop = "gꞅop",
  GROP = "GׅROP",
  Grop = "Gꞅop",
  gender = "geⴖdeꞅ",
  Gender = "Geⴖdeꞅ",
  genocide = "geⴖocide",
  Genocide = "Geⴖocide",
  google = "googӏe",
  Google = "Googӏe",
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
  holy = "hoӏy",
  hole = "hoӏe",
  HOLE = "HِOLE",
  hooker = "hookeꞅ",
  horny = "hoꞅny",
  Hooker = "Hookeꞅ",
  Horny = "Hoꞅny",
  HOOKER = "HOOϏER",
  HORNY = "HِORNY",
  instagram = "inธtagram",
  INSTAGRAM = "ӏNჽTAGRAM",
  isis = "iธiธ",
  ISIS = "ӏჽӏჽ",
  incest = "inceธt",
  Incest = "ӏnceธt",
  INCEST = "ӏNCEჽT",
  INE = "ӏNE",
  ING = "ӏNG",
  jungle = "jungӏe",
  jew = "jِew",
  jerk = "jeꞅk",
  Jerk = "jeꞅk",
  JERK = "JERϏ",
  job = "jِob",
  jig = "jiِg",
  Jig = "Jiِg",
  JIG = "JӏG",
  kkk = "kِkِkِ",
  KKK = "ϏϏϏ",
  kys = "kyِs",
  kill = "kiӏӏ",
  Kill = "ᴋiӏӏ",
  KILL = "KӏLL",
  knife = "knife",
  knife = "Knife",
  KNIFE = "KNӏFE",
  kiss = "kiِss",
  Kiss = "Kiِss",
  KISS = "KӏSS",
  kinky = "kiِⴖky",
  Kinky = "Kiِⴖky",
  kike = "kiِke",
  KINKY = "ϏINKY",
  lap = "ӏap",
  LMAO = "LMAO",
  lmao = "ӏmao",
  love = "ӏove",
  Love = "Loѵe",
  LOVE = "LOѴE",
  like = "ӏike",
  LIKE = "LIKE",
  lust = "ӏust",
  LUST = "LUჽT",
  Lust = "Lบst",
  liberal = "liberal",
  LIBERAL = "LIBERAL",
  Liberal = "Liberal",
  lsd = "ӏsd",
  LSD = "LِSD",
  meat = "mِeat",
  Meat = "Mِeat",
  MEAT = "MِEAT",
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
  NAKED = "NAϏED",
  nazi = "naⴭi",
  Nazi = "Naⴭi",
  NAZI = "NAჍIِ",
  negro = "negꞅo",
  Negro = "Negꞅo",
  NEGRO = "NِEGRO",
  nice = "nice",
  Nice = "Niِce",
  NICE = "NIِCE",
  nigg = "ทiِgg",
  Nigg = "Niِgg",
  NIGG = "NِӏGG",
  niger = "ⴖigeꞅ",
  Niger = "Nigeꞅ",
  NIGER = "NӏGER",
  niglet = "nigӏet",
  nsfw = "nธfw",
  Nsfw = "Nธfw",
  NSFW = "NِSFW",
  nude = "ⴖude",
  Nude = "Nِude",
  NUDE = "NِUDE",
  orgy = "oꞅgy",
  orgy = "Oꞅgy",
  ORGY = "ORGYِ",
  penis = "peniธ",
  Penis = "Peniธ",
  PENIS = "PENIჽ",
  PORN = "PِORN",
  Porn = "Poꞅn",
  porn = "poꞅn",
  power = "poweꞅ",
  power = "Poweꞅ",
  POWER = "PِOWER",
  pussy = "puธsy",
  Pussy = "Pบธsy",
  PUSSY = "PUჽჽY",
  put = "pบt",
  Put = "Pบt",
  PUT = "PِUT",
  plug = "pӏug",
  Plug = "Pӏug",
  PLUG ="PِLUG",
  piss = "piِss",
  Piss = "Piِss",
  PISS = "Pӏჽჽ",
  prostitute = "prostitบte",
  Prostitute = "Prostitบte",
  PROSTITUTE = "PِِROSTITUTE",
  pick = "pick",
  phile = "phiӏe",
  Phile = "Phiӏe",
  PHILE = "PHӏLE",
  rap = "ꞅар",
  Rap = "Rِap",
  RAP = "RِAP",
  raghead = "ꞅaghead",
  Raghead = "Rِaghead",
  RAGHEAD = "RِAGHEAD",
  retard = "ꞅetard",
  Retard = "Rِِetard",
  RETARD = "RِِETARD",
  semen = "ธemen",
  Semen = "Semeⴖ",
  SEMEN = "ჽEMEN",
  seduc = "ธeduc",
  Seduced = "ჽeduc",
  SEDUC = "ჽEDUC",
  sex = "ธex",
  Sex = "ჽex",
  SEX = "ჽEX",
  shit = "ธhit",
  Shit = "ჽhit",
  SHIT = "ჽНӀТ",
  shot = "ธhot",
  Shot = "ჽhot",
  spic = "ธpic",
  Spic = "ჽpic",
  SPIC = "ჽPIC",
  SIEG = "SIEG",
  SLAVE = "ჽLAVE",
  slave = "sӏave",
  slur = "ѕlur",
  slut = "ѕӏut",
  SLUT = "ჽLUT",
  Slut = "Ѕӏut",
  strip = "ธtrip",
  STRIP = "ჽTRIP",
  sucker = "sบcker",
  Sucker = "Sบcker",
  SUCKER = "ჽUCKER",
  SUCKING = "SUCKING",
  snapchat = "ธnapchat",
  Snapchat = "Sⴖapchat",
  sperm = "ธperm",
  Sperm = "ჽperm",
  SNAPCHAT = "ჽNAPCHAT",
  SPERM = "ჽPERM",
  stupid = "ธtupid",
  suicide = "ธuicide",
  TARD = "TِARD",
  terror = "terroꞅ",
  this = "thiธ",
  This = "Thiธ",
  THIS = "THIჽ",
  threesome = "thꞅeesome",
  Threesome = "Thꞅeesome",
  THREESOME = "THREEჽOME",
  tit = "tiِt",
  Tit = "Tiِt",
  TIT = "TIِT",
  tiktok = "tiktok",
  tranny = "traⴖⴖy",
  trannie = "traⴖⴖie",
  TRANNY = "TِRANNY",
  TRANNIE = "TRANNlE",
  TRUMP = "TRUMР",
  trump = "trumр",
  twat = "tِwat",
  Twat = "Tِwat",
  TWAT = "TِWAT",
  twink = "twiⴖk",
  Twink = "Twiⴖk",
  TWINK = "TWINϏ",
  twerk = "tweꞅk",
  Twerk = "Tweꞅk",
  TWERK = "TWERϏ",
  vagina = "vagiⴖa",
  Vagina = "Vagiⴖa",
  VAGINA = "VِAGIِNA",
  weed = "wِeed",
  Weed = "Wِeed",
  WEED = "WِEED",
  wetback = "wِetback",
  Wetback = "Wِetback",
  WETBACK = "WِETBACK",
  whore = "whoꞅe",
  Whore = "Whoꞅe",
  WHORE = "WِHORE",
  white = "wһіtе",
  White = "Wһіtе",
  xxx = "xِxِxِ",
  XXX = "XِXِXِ",
  xvideos = "xviِdeos",
  Xvideos = "Xviِdeos",
  XVIDEOS = "XVIÐEOS",
  youtube = "yِoutบbe",
  YOUTUBE = "YِOUTUBE",
  Youtube = "Youtบbe",
  yourself = "yourseIf",
  Yourself = "YourseIf",
        ngentot ="ⴖgentot",
        Ngentot ="Nِgentot",
        NGENTOT ="NِGENTOT",
        memek="memek",
        Memek ="Memek",
        MEMEK = "MِEMEK",
        kontol="kontoI",
        Kontol="KontoI",
        KONTOL="KِONTOL",
        bangsat="baⴖgsat",
        Bangsat="Baⴖgsat",
        BANGSAT="BANGჽAT",
        lonte = "Ionte",
        Lonte = "Lonte",
        LONTE = "LONTE",
        pentil="pentiI",
        Pentil="PentiI",
        PENTIL="PENTIL",
        ["e621"]="eِ621",
        ["E621"]="Eِ621",
        ["r34"]="ꞅ34",
        ["R34"]="Rِ34",
        ["rule34"]="ruIe34",
        ["Rule34"]="RuIe34",
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

sendButton.MouseButton1Click:Connect(function()
        local inputText = chatbox.Text
        __a(inputText)
end)
