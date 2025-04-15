local RunService = game:GetService("RunService")
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()

local Window =
    Rayfield:CreateWindow(
    {
        Name = "Forsaken Masti&Kross Hub",
        Icon = 0, -- TODO: Установить иконку
        LoadingTitle = "Rayfield Interface Suite",
        LoadingSubtitle = "by Sirius",
        Theme = "Amethyst",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "hubs/Forsaken Masti&Kross Hub",
            FileName = "Forsaken Hub"
        },
        Discord = {
            Enabled = true,
            Invite = "noinvitelink",
            RememberJoins = true
        },
        KeySystem = true,
        KeySettings = {
            Title = "Untitled",
            Subtitle = "Key System",
            Note = "Join to discord to get a key",
            FileName = "forsaken_Masti&Kross_hub_key",
            SaveKey = true,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "testKey5812" -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    }
)
local last_solve_gen = 0
local home_tab = Window:CreateTab("Home", 4483362458)
local plrs_ESP_tab = Window:CreateTab("PLRS ESP", 4483362458)
local gens_tab = Window:CreateTab("GENS", 4483362458)
local plr_colors = nil
local gen_colors = nil
local stamina_conn = nil
local Stamina_toggle =
    home_tab:CreateToggle(
    {
        Name = "Disable Stamina loss",
        CurrentValue = false,
        Flag = "StaminaToggle",
        Callback = function(Value)
            set_stamina_loss(not Value)
        end
    }
)

local Toggle_plr_ESP =
    plrs_ESP_tab:CreateToggle(
    {
        Name = "Toggle ESP",
        CurrentValue = true,
        Flag = "TogglePlrsESP",
        Callback = function(Value)
            if Value then
                enable_plrs_esp()
            else
                disable_plrs_esp()
            end
        end
    }
)

local colors_section = plrs_ESP_tab:CreateSection("Colors")

local Killers_Toggle =
    plrs_ESP_tab:CreateToggle(
    {
        Name = "Toggle Killers",
        CurrentValue = true,
        Flag = "KillersToggle",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)
local Killers_fill =
    plrs_ESP_tab:CreateColorPicker(
    {
        Name = "Killers Fill",
        Color = Color3.fromRGB(255, 0, 0),
        Flag = "KillersFill",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)

local Killers_outline =
    plrs_ESP_tab:CreateColorPicker(
    {
        Name = "Killers Outline",
        Color = Color3.fromRGB(128, 128, 128),
        Flag = "KillersOutline",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)
plrs_ESP_tab:CreateDivider()
local Survivors_Toggle =
    plrs_ESP_tab:CreateToggle(
    {
        Name = "Toggle Survivors",
        CurrentValue = true,
        Flag = "SurvivorsToggle",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)

local Survivors_fill =
    plrs_ESP_tab:CreateColorPicker(
    {
        Name = "Survivors Fill",
        Color = Color3.fromRGB(0, 255, 0),
        Flag = "SurvivorsFill",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)

local Survivors_outline =
    plrs_ESP_tab:CreateColorPicker(
    {
        Name = "Survivors Outline",
        Color = Color3.fromRGB(128, 128, 128),
        Flag = "SurvivorsOutline",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)
plrs_ESP_tab:CreateDivider()
local Spectating_Toggle =
    plrs_ESP_tab:CreateToggle(
    {
        Name = "Toggle Spectating",
        CurrentValue = false,
        Flag = "SpectatingToggle",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)

local Spectating_fill =
    plrs_ESP_tab:CreateColorPicker(
    {
        Name = "Spectating Fill",
        Color = Color3.fromRGB(255, 255, 255),
        Flag = "SpectatingFill",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)

local Spectating_outline =
    plrs_ESP_tab:CreateColorPicker(
    {
        Name = "Spectating Outline",
        Color = Color3.fromRGB(128, 128, 128),
        Flag = "SpectatingOutline",
        Callback = function()
            update_plrs_esp_colors()
        end
    }
)

local reload_esp_button =
    plrs_ESP_tab:CreateButton(
    {
        Name = "Reload ESP",
        Callback = function()
            disable_plrs_esp()
            update_plrs_esp_colors()
        end
    }
)

local min_range_Auto_solver =
    gens_tab:CreateSlider(
    {
        Name = "Auto Solver Min delay",
        Range = {0, 10},
        Increment = 0.1,
        Suffix = "",
        CurrentValue = 1.3,
        Flag = "AutoSolverMinRange",
        Callback = function(Value)
        end
    }
)
local Solve_generator_bind =
    gens_tab:CreateKeybind(
    {
        Name = "Solve generator",
        CurrentKeybind = "H",
        HoldToInteract = false,
        Callback = function(Keybind)
            solvegen()
        end
    }
)

local Toggle_gens_ESP =
    gens_tab:CreateToggle(
    {
        Name = "Toggle ESP",
        CurrentValue = true,
        Flag = "ToggleGensESP",
        Callback = function(Value)
            if Value then
                enable_gens_esp()
            else
                disable_gens_esp()
            end
        end
    }
)
local Gens_fill =
    gens_tab:CreateColorPicker(
    {
        Name = "Gens Fill",
        Color = Color3.fromRGB(255, 255, 0),
        Flag = "GensFill",
        Callback = function()
            update_gens_esp_colors()
        end
    }
)
local Gens_activated_fill =
    gens_tab:CreateColorPicker(
    {
        Name = "Gens Activated Fill",
        Color = Color3.fromRGB(0, 255, 0),
        Flag = "GensActivatedFill",
        Callback = function()
            update_gens_esp_colors()
        end
    }
)

local Gens_outline =
    gens_tab:CreateColorPicker(
    {
        Name = "Gens Outline",
        Color = Color3.fromRGB(128, 128, 128),
        Flag = "GensOutline",
        Callback = function()
            update_gens_esp_colors()
        end
    }
)
local Gens_activated_outline =
    gens_tab:CreateColorPicker(
    {
        Name = "Gens Outline",
        Color = Color3.fromRGB(128, 128, 128),
        Flag = "GensOutline",
        Callback = function()
            update_gens_esp_colors()
        end
    }
)
local reload_esp_button =
    gens_tab:CreateButton(
    {
        Name = "Reload ESP",
        Callback = function()
            disable_gens_esp()
            update_gens_esp_colors()
        end
    }
)

local Chars_folder = workspace:WaitForChild("Players")
local Map_folder = workspace:WaitForChild("Map")
local Ingame = Map_folder:WaitForChild("Ingame")

function set_stamina_loss(state)
    local set_to = function()
    end and not state or nil
    if stamina_conn ~= nil then
        stamina_conn:Disconnect()
        stamina_conn = nil
    end
    stamina_conn =
        RunService.Heartbeat:Connect(
        function(deltaTime)
            local stamscript = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
            stamscript.StaminaLossDisabled = set_to
        end
    )
end

function remove_esp(model)
    if model:FindFirstChild("ESP") then
        model:FindFirstChild("ESP"):Destroy()
    end
end
function add_esp(model, fill_color, fill_transparency, outline_color, outline_transparency)
    local Highlight = Instance.new("Highlight", model)
    Highlight.Name = "ESP"
    Highlight.FillColor = fill_color
    Highlight.FillTransparency = fill_transparency
    Highlight.OutlineColor = outline_color
    Highlight.OutlineTransparency = outline_transparency
end

function disable_plrs_esp()
    for i_team, team in pairs(Chars_folder:GetChildren()) do
        for i_char, char in pairs(team:GetChildren()) do
            remove_esp(char)
        end
    end
end
function enable_plrs_esp()
    disable_plrs_esp()
    for i_team, team in pairs(Chars_folder:GetChildren()) do
        for i_char, char in pairs(team:GetChildren()) do
            if plr_colors[team.Name] ~= nil then
                add_esp(
                    char,
                    plr_colors[team.Name]["fill"],
                    plr_colors[team.Name]["fill_transparency"],
                    plr_colors[team.Name]["outline"],
                    plr_colors[team.Name]["outline_transparency"]
                )
            end
        end
    end
end

function update_plrs_esp_colors(Value)
    plr_colors = {
        ["Killers"] = {
            ["fill"] = Killers_fill.Color,
            ["fill_transparency"] = 0.5,
            ["outline"] = Killers_outline.Color,
            ["outline_transparency"] = 0.5
        },
        ["Survivors"] = {
            ["fill"] = Survivors_fill.Color,
            ["fill_transparency"] = 0.5,
            ["outline"] = Survivors_outline.Color,
            ["outline_transparency"] = 0.5
        },
        ["Spectating"] = {
            ["fill"] = Spectating_fill.Color,
            ["fill_transparency"] = 0.5,
            ["outline"] = Spectating_outline.Color,
            ["outline_transparency"] = 0.5
        }
    }
    if not Killers_Toggle.CurrentValue then
        plr_colors["Killers"]["fill_transparency"] = 1
        plr_colors["Killers"]["outline_transparency"] = 1
    end
    if not Survivors_Toggle.CurrentValue then
        plr_colors["Survivors"]["fill_transparency"] = 1
        plr_colors["Survivors"]["outline_transparency"] = 1
    end
    if not Spectating_Toggle.CurrentValue then
        plr_colors["Spectating"]["fill_transparency"] = 1
        plr_colors["Spectating"]["outline_transparency"] = 1
    end
    if Toggle_plr_ESP.CurrentValue then
        enable_plrs_esp()
    else
        disable_plrs_esp()
    end
end

function disable_gens_esp()
    local Map_folder = workspace:WaitForChild("Map")
    local Ingame = Map_folder:WaitForChild("Ingame")
    local MapModel
    for i = 1, 30 do
        MapModel = Ingame:FindFirstChild("Map")
        if MapModel ~= nil then
            break
        end
        wait()
    end
    for i_gen, gen in pairs(MapModel:GetChildren()) do
        if gen.Name == "Generator" then
            remove_esp(gen)
        end
    end
end
function enable_gens_esp()
    disable_gens_esp()
    local Map_folder = workspace:WaitForChild("Map")
    local Ingame = Map_folder:WaitForChild("Ingame")
    local MapModel
    for i = 1, 30 do
        MapModel = Ingame:FindFirstChild("Map")
        if MapModel ~= nil then
            break
        end
        wait()
    end
    for i_gen, gen in pairs(MapModel:GetChildren()) do
        if gen.Name == "Generator" then
            local activated = false
            add_esp(
                gen,
                gen_colors["fill"],
                gen_colors["fill_transparency"],
                gen_colors["outline"],
                gen_colors["outline_transparency"]
            )
        end
    end
end
function update_gens_esp_colors(Value)
    gen_colors = {
        ["fill"] = Gens_fill.Color,
        ["fill_activated"] = Gens_activated_fill.Color,
        ["fill_transparency"] = 0.5,
        ["outline"] = Gens_outline.Color,
        ["outline_activated"] = Gens_activated_outline.Color,
        ["outline_transparency"] = 0.5
    }
    local success, err =
        pcall(
        function()
            if Toggle_gens_ESP.CurrentValue then
                enable_gens_esp()
            else
                disable_gens_esp()
            end
        end
    )
end

function solvegen()
    if last_solve_gen + min_range_Auto_solver.CurrentValue > time() then
        return
    end
    local success, err =
        pcall(
        function()
            for i, v in pairs(game.Workspace.Map.Ingame.Map:GetChildren()) do
                if v.name == "Generator" then
                    v:WaitForChild("Remotes"):WaitForChild("RE"):FireServer()
                end
            end
        end
    )
    last_solve_gen = time()
end

function update_all()
    update_gens_esp_colors()
    update_plrs_esp_colors()
    set_stamina_loss(not Stamina_toggle.CurrentValue)
end

while wait(1) do
    update_all()
end
