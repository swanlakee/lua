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
chatbox.TextSize = 17
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
    textButton.AutoButtonColor = false
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
    titleButton.Font = "SourceSansBold"
    titleButton.Parent = scroll
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


local function __a(input)
local list_ = {
--ꜰบϲƙ ƗҺίธ ธҺίƗ 
[" "]="",["|"]="\n",
  anal = "аnаӏ",
  Anal = "Anаӏ",
  ANAL = "АΝАL",
  ASS = "Aჽჽ",
  Ass = "Aธs",
  ass = "аธs",
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
  cock = "cocķِ",
  COCK = "ϹOϹҠ",
  Cock = "Cocķِ",
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
  CUM = "ϹUِӍ",
  cunt = "cบnt",
  Cunt = "Cบnt",
  CUNT = "CِUNT",
  cunnie = "cบnnie",
  Cunnie = "Cบnnie",
  CUNNIE = "ϹUNNIE", 
  deepthroat = "deepthꞅoat",
  Deepthroat = "Deepthꞅoat",
  DEEPTHROAT = "ÐEEPTHROAT",
  disaster = "disasteꞅ",
  Disaster = "Disasteꞅ",
  DISASTER = "DIِSASTER",
  dildo = "diӏdo",
  Dildo = "Diӏdo",
  DILDO = "ÐILDO",
  dick = "dίck",
  Dick = "Dίck",
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
  durex = "duꞅex",
  Durex = "Duꞅex",
  DUREX = "ÐUREX",
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
  Finger = "Fingeꞅ",
  FINGER = "FӏNGER",
  FUCK = "ꜰUCK",
  fuck = "fบck",
  Fuck = "ꜰuck",
  ganja = "gaⴖja",
  Ganja = "Gaⴖja",
  GANJA = "GANͿA",
  gang = "gaทg",
  Gang = "Gaทg",
  GANG = "GِANG",
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
  kunt = "kบnt",
  Kunt = "Kบnt",
  KUNT = "ҠUNT",
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
  nig = "nίg",
  Nig = "Nίg",
  NIG = "NIِG",
  nsfw = "nธfw",
  Nsfw = "Nธfw",
  NSFW = "NჽFW",
  nude = "nบde",
  Nude = "Nบde",
  NUDE = "NUÐE",
  org = "oꞅg",
  Org = "Oꞅg",
  ORG = "ORGِ",
  pantie = "pantίe",
  Pantie = "Pantίe",
  PANTIE = "PANTIِE",
  penis = "penίs",
  Penis = "Penίs",
  PENIS = "PENIჽ",
  PORN = "PِORN",
  Porn = "Poꞅn",
  porn = "poꞅn",
  pubic = "pubίc",
  Pubic = "Pubίc",
  PUBIC = "PUBIِC",
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
  trann = "tꞅann",
  trann = "Tꞅann",
  TRANN = "TِRANN",
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
