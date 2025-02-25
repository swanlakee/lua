local gui = Instance.new("ScreenGui")
gui.Name = "NeverG"
gui.Parent = game.CoreGui

local function corner(ui,value)
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(value)
    UICorner.Parent = ui
end

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.2, 0, 0.12, 0)
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
textlabel.Size = UDim2.new(1, 0, 0.3, 0)
textlabel.Position = UDim2.new(0, 0, 0.1, 0)
textlabel.BackgroundColor3 = Color3.new(0, 0, 0)
textlabel.BorderColor3 = Color3.new(0, 0, 0)
textlabel.BorderSizePixel = 0
textlabel.Text = " NeverPatched V4"
textlabel.TextColor3 = Color3.new(255, 255, 255)
textlabel.BackgroundTransparency = 1
textlabel.Font = "Highway"
textlabel.TextWrapped = true
textlabel.TextXAlignment = "Center"
textlabel.TextScaled = true
textlabel.Parent = frame

local chatbox = Instance.new("TextBox")
chatbox.Size = UDim2.new(0.9, 0, 0.4, 0)
chatbox.Position = UDim2.new(0.05, 0, 0.5, 0)
chatbox.BackgroundColor3 = Color3.new(0, 0, 0)
chatbox.BorderColor3 = Color3.new(0, 0, 0)
chatbox.BorderSizePixel = 0
chatbox.Text = ""
chatbox.TextColor3 = Color3.new(1,1,1)
chatbox.BackgroundTransparency = 0.7
chatbox.Font = "Fantasy"
chatbox.TextSize = 17
chatbox.TextScaled = true
chatbox.TextWrapped = true
chatbox.TextXAlignment = "Center"
chatbox.PlaceholderText = "change your language to Solvenski"
chatbox.ClearTextOnFocus = false
chatbox.TextScaled = true
chatbox.Parent = frame

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

chatbox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local inputText = chatbox.Text
        __a(inputText)
        chatbox.Text = ""
    end
end)

local function __a(input)
local list_ = {
-- don't change
[" "]="",["|"]="\r",
-- change if you want
["〪"]="〪", -- "method"
-- orK
["@$"]="〪",

fuck="f〪uck",
Fuck="F〪uck",
FUCK="F〪UCK",
nig="n〪ig",
Nig="N〪ig",
NIG="N〪IG",
boo="b〪oo",
Boo="B〪oo",
BOO="B〪OO",
shit="s〪hit",
Shit="S〪hit",
SHIT="S〪HIT",
rap="r〪ap",
Rap="R〪ap",
RAP="R〪AP",
cock="c〪ock",
Cock="C〪ock",
COCK="C〪OCK",
cunt="c〪unt",
Cunt="C〪unt",
CUNT="C〪UNT",
slut="s〪lut",
Slut="S〪lut",
SLUT="S〪LUT",
slave="s〪lave",
Slave="S〪lave",
SLAVE="S〪LAVE",
ass="a〪ss", 
Ass="A〪ss", 
ASS="A〪SS",
asshole="a〪sshole", 
Asshole="A〪sshole", 
ASSHOLE="A〪SSHOLE",
retard="r〪etard",
Retard="R〪etard",
RETARD="R〪ETARD",
pus="p〪us",
Pus="P〪us",
PUS="P〪US",
pussy="p〪ussy",
Pussy="P〪ussy",
PUSSY="P〪USSY",
vagina="v〪agina",
Vagina="V〪agina",
VAGINA="V〪AGINA",
blowjob="b〪lowjob",
Blowjob="B〪lowjob",
BLOWJOB="B〪LOWJOB",
bitch="b〪itch",
Bitch="B〪itch",
BITCH="B〪ITCH",
xxx="x〪xx",
Xxx="X〪xx",
XXX="X〪XX",
porn="p〪orn",
Porn="P〪orn",
PORN="P〪ORN",
hentai="h〪entai",
Hentai="H〪entai",
HENTAI="H〪ENTAI",
tit="t〪it",
Tit="T〪it",
TIT="T〪IT",
tits="t〪its",
Tits="T〪its",
TITS="T〪ITS",
gangbang="g〪angbang",
Gangbang="G〪angbang",
GANGBANG="G〪ANGBANG",
futa="f〪uta",
Futa="F〪uta",
FUTA="F〪UTA",
dick="d〪ick",
Dick="D〪ick",
DICK="D〪ICK",
penis="p〪enis",
Penis="P〪enis",
PENIS="P〪ENIS",
horny="h〪orny",
Horny="H〪orny",
HORNY="H〪ORNY",
suck="s〪uck",
Suck="S〪uck",
SUCK="S〪UCK",
sex="s〪ex",
Sex="S〪ex",
SEX="S〪EX",
semen="s〪emen",
Semen="S〪emen",
SEMEN="S〪EMEN",
cum="c〪um",
Cum="C〪um",
CUM="C〪UM",
nipple="n〪ipple",
Nipple="N〪ipple",
NIPPLE="N〪IPPLE",
nipples="n〪ipples",
Nipples="N〪ipples",
NIPPLES="N〪IPPLES",
kys="k〪ys",
Kys="K〪ys",
KYS="K〪YS",
kill="k〪ill",
Kill="K〪ill",
KILL="K〪ILL",
milf="m〪ilf",
Milf="M〪ilf",
MILF="M〪ILF",
loli="l〪oli",
Loli="L〪oli",
LOLI="L〪OLI",
child="c〪hild",
Child="C〪hild",
CHILD="C〪HILD",
faggot="f〪aggot",
Faggot="F〪aggot",
FAGGOT="F〪AGGOT",
pedophile="p〪edophile",
Pedophile="P〪edophile",
PEDOPHILE="P〪EDOPHILE",
pedofile="p〪edofile",
Pedofile="P〪edofile",
PEDOFILE="P〪EDOFILE",
pedo="p〪edo",
Pedo="P〪edo",
PEDO="P〪EDO",
minor="m〪inor",
Minor="M〪inor",
MINOR="M〪INOR",
minors="m〪inors",
Minors="M〪inors",
MINORs="M〪INORS",
love="l〪ove",
Love="L〪ove",
LOVE="L〪OVE",
anal="a〪nal",
Anal="A〪nal",
ANAL="A〪NAL",



        --indo
        ngentot ="n〪gentot",
        Ngentot ="N〪gentot", 
        NGENTOT ="N〪GENTOT",
        memek="m〪emek",
        Memek ="〪Memek",
        MEMEK = "M〪EMEK",
        kontol="k〪ontol",
        Kontol="K〪ontol",
        KONTOL="K〪ONTOL",
        bangsat="b〪angsat", 
        Bangsat="B〪angsat", 
        BANGSAT="B〪ANGSAT",
        --web
        ["e621"]="e〪621",
        ["E621"]="E〪621",
        ["r34"]="r〪34",
        ["R34"]="R〪34",
        ["rule34"]="r〪ule34",
        ["Rule34"]="R〪ule34",
        ["RULE34"]="R〪ULE34",
        youtube="y〪outube",
        Youtube="Y〪outube",
        YOUTUBE="Y〪OUTUBE",
        facebook="f〪acebook",
        Facebook="F〪acebook",
        FACEBOOK="F〪ACEBOOK",
        onlyfans="o〪nlyfans",
        Onlyfans="O〪nlyfans",
        ONLYFANS="O〪NLYFANS",
        discord="d〪iscord",
        Discord="D〪iscord",
        DISCORD="D〪ISCORD",
        tiktok="t〪iktok",
        Tiktok="T〪iktok",
        TIKTOK="T〪IKTOK",
        xnxx="x〪nxx",
        Xnxx="X〪nxx",
        XNXX="X〪NXX",
        ["pornhub.com"] = "p〪ornhub.com", 
        ["Pornhub.com"] = "P〪ornhub.com",
        ["PORNHUB.COM"] = "P〪ORNHUB.COM",

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
       chatbox.Text = ""
    end
end)
