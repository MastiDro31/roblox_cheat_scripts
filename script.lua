local b=game:GetService("\x52\x75\x6E\x53\x65\x72\x76\x69\x63\x65") local _=loadstring(game:HttpGet('\x68\x74\x74\x70\x73\x3A\x2F\x2F\x73\x69\x72\x69\x75\x73\x2E\x6D\x65\x6E\x75\x2F\x72\x61\x79\x66\x69\x65\x6C\x64'))() local a=_:CreateWindow({Name="\x46\x6F\x72\x73\x61\x6B\x65\x6E\x20\x4D\x61\x73\x74\x69\x26\x4B\x72\x6F\x73\x73\x20\x48\x75\x62",Icon=0,LoadingTitle="\x52\x61\x79\x66\x69\x65\x6C\x64\x20\x49\x6E\x74\x65\x72\x66\x61\x63\x65\x20\x53\x75\x69\x74\x65",LoadingSubtitle="\x62\x79\x20\x53\x69\x72\x69\x75\x73",Theme="\x41\x6D\x65\x74\x68\x79\x73\x74",DisableRayfieldPrompts=false,DisableBuildWarnings=false,ConfigurationSaving={Enabled=true,FolderName="\x68\x75\x62\x73\x2F\x46\x6F\x72\x73\x61\x6B\x65\x6E\x20\x4D\x61\x73\x74\x69\x26\x4B\x72\x6F\x73\x73\x20\x48\x75\x62",FileName="\x46\x6F\x72\x73\x61\x6B\x65\x6E\x20\x48\x75\x62"},Discord={Enabled=true,Invite="\x6E\x6F\x69\x6E\x76\x69\x74\x65\x6C\x69\x6E\x6B",RememberJoins=true},KeySystem=true,KeySettings={Title="\x55\x6E\x74\x69\x74\x6C\x65\x64",Subtitle="\x4B\x65\x79\x20\x53\x79\x73\x74\x65\x6D",Note="\x4A\x6F\x69\x6E\x20\x74\x6F\x20\x64\x69\x73\x63\x6F\x72\x64\x20\x74\x6F\x20\x67\x65\x74\x20\x61\x20\x6B\x65\x79",FileName="\x66\x6F\x72\x73\x61\x6B\x65\x6E\x5F\x4D\x61\x73\x74\x69\x26\x4B\x72\x6F\x73\x73\x5F\x68\x75\x62\x5F\x6B\x65\x79",SaveKey=true,GrabKeyFromSite=false,Key="\x74\x65\x73\x74\x4B\x65\x79\x35\x38\x31\x32"}}) local s=0 local _=a:CreateTab("\x48\x6F\x6D\x65",4483362458) local l=a:CreateTab("\x50\x4C\x52\x53\x20\x45\x53\x50",4483362458) local t=a:CreateTab("\x47\x45\x4E\x53",4483362458) local w=nil local v=nil local u=nil local i=_:CreateToggle({Name="\x44\x69\x73\x61\x62\x6C\x65\x20\x53\x74\x61\x6D\x69\x6E\x61\x20\x6C\x6F\x73\x73",CurrentValue=false,Flag="\x53\x74\x61\x6D\x69\x6E\x61\x54\x6F\x67\x67\x6C\x65",Callback=function(_)set_stamina_loss(not _)end}) local g=l:CreateToggle({Name="\x54\x6F\x67\x67\x6C\x65\x20\x45\x53\x50",CurrentValue=true,Flag="\x54\x6F\x67\x67\x6C\x65\x50\x6C\x72\x73\x45\x53\x50",Callback=function(_)if _ then enable_plrs_esp()else disable_plrs_esp()end end}) local _=l:CreateSection("\x43\x6F\x6C\x6F\x72\x73") local h=l:CreateToggle({Name="\x54\x6F\x67\x67\x6C\x65\x20\x4B\x69\x6C\x6C\x65\x72\x73",CurrentValue=true,Flag="\x4B\x69\x6C\x6C\x65\x72\x73\x54\x6F\x67\x67\x6C\x65",Callback=function()update_plrs_esp_colors()end}) local f=l:CreateColorPicker({Name="\x4B\x69\x6C\x6C\x65\x72\x73\x20\x46\x69\x6C\x6C",Color=Color3.fromRGB(255,0,0),Flag="\x4B\x69\x6C\x6C\x65\x72\x73\x46\x69\x6C\x6C",Callback=function()update_plrs_esp_colors()end}) local k=l:CreateColorPicker({Name="\x4B\x69\x6C\x6C\x65\x72\x73\x20\x4F\x75\x74\x6C\x69\x6E\x65",Color=Color3.fromRGB(128,128,128),Flag="\x4B\x69\x6C\x6C\x65\x72\x73\x4F\x75\x74\x6C\x69\x6E\x65",Callback=function()update_plrs_esp_colors()end}) l:CreateDivider() local a=l:CreateToggle({Name="\x54\x6F\x67\x67\x6C\x65\x20\x53\x75\x72\x76\x69\x76\x6F\x72\x73",CurrentValue=true,Flag="\x53\x75\x72\x76\x69\x76\x6F\x72\x73\x54\x6F\x67\x67\x6C\x65",Callback=function()update_plrs_esp_colors()end}) local c=l:CreateColorPicker({Name="\x53\x75\x72\x76\x69\x76\x6F\x72\x73\x20\x46\x69\x6C\x6C",Color=Color3.fromRGB(0,255,0),Flag="\x53\x75\x72\x76\x69\x76\x6F\x72\x73\x46\x69\x6C\x6C",Callback=function()update_plrs_esp_colors()end}) local d=l:CreateColorPicker({Name="\x53\x75\x72\x76\x69\x76\x6F\x72\x73\x20\x4F\x75\x74\x6C\x69\x6E\x65",Color=Color3.fromRGB(128,128,128),Flag="\x53\x75\x72\x76\x69\x76\x6F\x72\x73\x4F\x75\x74\x6C\x69\x6E\x65",Callback=function()update_plrs_esp_colors()end}) l:CreateDivider() local e=l:CreateToggle({Name="\x54\x6F\x67\x67\x6C\x65\x20\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67",CurrentValue=false,Flag="\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67\x54\x6F\x67\x67\x6C\x65",Callback=function()update_plrs_esp_colors()end}) local j=l:CreateColorPicker({Name="\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67\x20\x46\x69\x6C\x6C",Color=Color3.fromRGB(255,255,255),Flag="\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67\x46\x69\x6C\x6C",Callback=function()update_plrs_esp_colors()end}) local o=l:CreateColorPicker({Name="\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67\x20\x4F\x75\x74\x6C\x69\x6E\x65",Color=Color3.fromRGB(128,128,128),Flag="\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67\x4F\x75\x74\x6C\x69\x6E\x65",Callback=function()update_plrs_esp_colors()end}) local _=l:CreateButton({Name="\x52\x65\x6C\x6F\x61\x64\x20\x45\x53\x50",Callback=function()disable_plrs_esp() update_plrs_esp_colors()end}) local l=t:CreateSlider({Name="\x41\x75\x74\x6F\x20\x53\x6F\x6C\x76\x65\x72\x20\x4D\x69\x6E\x20\x64\x65\x6C\x61\x79",Range={0,10},Increment=0.1,Suffix="",CurrentValue=1.3,Flag="\x41\x75\x74\x6F\x53\x6F\x6C\x76\x65\x72\x4D\x69\x6E\x52\x61\x6E\x67\x65",Callback=function(_)end}) local _=t:CreateKeybind({Name="\x53\x6F\x6C\x76\x65\x20\x67\x65\x6E\x65\x72\x61\x74\x6F\x72",CurrentKeybind="\x48",HoldToInteract=false,Callback=function(_)solvegen()end}) local r=t:CreateToggle({Name="\x54\x6F\x67\x67\x6C\x65\x20\x45\x53\x50",CurrentValue=true,Flag="\x54\x6F\x67\x67\x6C\x65\x47\x65\x6E\x73\x45\x53\x50",Callback=function(_)if _ then enable_gens_esp()else disable_gens_esp()end end}) local q=t:CreateColorPicker({Name="\x47\x65\x6E\x73\x20\x46\x69\x6C\x6C",Color=Color3.fromRGB(255,255,0),Flag="\x47\x65\x6E\x73\x46\x69\x6C\x6C",Callback=function()update_gens_esp_colors()end}) local p=t:CreateColorPicker({Name="\x47\x65\x6E\x73\x20\x41\x63\x74\x69\x76\x61\x74\x65\x64\x20\x46\x69\x6C\x6C",Color=Color3.fromRGB(0,255,0),Flag="\x47\x65\x6E\x73\x41\x63\x74\x69\x76\x61\x74\x65\x64\x46\x69\x6C\x6C",Callback=function()update_gens_esp_colors()end}) local m=t:CreateColorPicker({Name="\x47\x65\x6E\x73\x20\x4F\x75\x74\x6C\x69\x6E\x65",Color=Color3.fromRGB(128,128,128),Flag="\x47\x65\x6E\x73\x4F\x75\x74\x6C\x69\x6E\x65",Callback=function()update_gens_esp_colors()end}) local n=t:CreateColorPicker({Name="\x47\x65\x6E\x73\x20\x4F\x75\x74\x6C\x69\x6E\x65",Color=Color3.fromRGB(128,128,128),Flag="\x47\x65\x6E\x73\x4F\x75\x74\x6C\x69\x6E\x65",Callback=function()update_gens_esp_colors()end}) local _=t:CreateButton({Name="\x52\x65\x6C\x6F\x61\x64\x20\x45\x53\x50",Callback=function()disable_gens_esp() update_gens_esp_colors()end}) local t=workspace:WaitForChild("\x50\x6C\x61\x79\x65\x72\x73") local _=workspace:WaitForChild("\x4D\x61\x70") local _=_:WaitForChild("\x49\x6E\x67\x61\x6D\x65") function set_stamina_loss(_)local a=function()end and not _ or nil if u~=nil then u:Disconnect() u=nil end u=b.Heartbeat:Connect(function(_)local _=require(game.ReplicatedStorage.Systems.Character.Game.Sprinting) _.StaminaLossDisabled=a end)end function remove_esp(_)if _:FindFirstChild("\x45\x53\x50")then _:FindFirstChild("\x45\x53\x50"):Destroy()end end function add_esp(_,a,d,c,b)local _=Instance.new("\x48\x69\x67\x68\x6C\x69\x67\x68\x74",_) _.Name="\x45\x53\x50" _.FillColor=a _.FillTransparency=d _.OutlineColor=c _.OutlineTransparency=b end function disable_plrs_esp()for _,_ in pairs(t:GetChildren())do for _,_ in pairs(_:GetChildren())do remove_esp(_)end end end function enable_plrs_esp()disable_plrs_esp() for _,a in pairs(t:GetChildren())do for _,_ in pairs(a:GetChildren())do if w[a.Name]~=nil then add_esp(_,w[a.Name]["\x66\x69\x6C\x6C"],w[a.Name]["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"],w[a.Name]["\x6F\x75\x74\x6C\x69\x6E\x65"],w[a.Name]["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"])end end end end function update_plrs_esp_colors(_)w={["\x4B\x69\x6C\x6C\x65\x72\x73"]={["\x66\x69\x6C\x6C"]=f.Color,["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5,["\x6F\x75\x74\x6C\x69\x6E\x65"]=k.Color,["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5},["\x53\x75\x72\x76\x69\x76\x6F\x72\x73"]={["\x66\x69\x6C\x6C"]=c.Color,["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5,["\x6F\x75\x74\x6C\x69\x6E\x65"]=d.Color,["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5},["\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67"]={["\x66\x69\x6C\x6C"]=j.Color,["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5,["\x6F\x75\x74\x6C\x69\x6E\x65"]=o.Color,["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5}} if not h.CurrentValue then w["\x4B\x69\x6C\x6C\x65\x72\x73"]["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=1 w["\x4B\x69\x6C\x6C\x65\x72\x73"]["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=1 end if not a.CurrentValue then w["\x53\x75\x72\x76\x69\x76\x6F\x72\x73"]["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=1 w["\x53\x75\x72\x76\x69\x76\x6F\x72\x73"]["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=1 end if not e.CurrentValue then w["\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67"]["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=1 w["\x53\x70\x65\x63\x74\x61\x74\x69\x6E\x67"]["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=1 end if g.CurrentValue then enable_plrs_esp()else disable_plrs_esp()end end function disable_gens_esp()local _=workspace:WaitForChild("\x4D\x61\x70") local a=_:WaitForChild("\x49\x6E\x67\x61\x6D\x65") local b for _=1,30 do b=a:FindFirstChild("\x4D\x61\x70") if b~=nil then break end wait()end for _,_ in pairs(b:GetChildren())do if _.Name~="\x47\x65\x6E\x65\x72\x61\x74\x6F\x72"then continue end remove_esp(_)end end function enable_gens_esp()disable_gens_esp() local _=workspace:WaitForChild("\x4D\x61\x70") local a=_:WaitForChild("\x49\x6E\x67\x61\x6D\x65") local b for _=1,30 do b=a:FindFirstChild("\x4D\x61\x70") if b~=nil then break end wait()end for _,a in pairs(b:GetChildren())do if a.Name~="\x47\x65\x6E\x65\x72\x61\x74\x6F\x72"then continue end local _=false add_esp(a,v["\x66\x69\x6C\x6C"],v["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"],v["\x6F\x75\x74\x6C\x69\x6E\x65"],v["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"])end end function update_gens_esp_colors(_)v={["\x66\x69\x6C\x6C"]=q.Color,["\x66\x69\x6C\x6C\x5F\x61\x63\x74\x69\x76\x61\x74\x65\x64"]=p.Color,["\x66\x69\x6C\x6C\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5,["\x6F\x75\x74\x6C\x69\x6E\x65"]=m.Color,["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x61\x63\x74\x69\x76\x61\x74\x65\x64"]=n.Color,["\x6F\x75\x74\x6C\x69\x6E\x65\x5F\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79"]=0.5} local _,_=pcall(function()if r.CurrentValue then enable_gens_esp()else disable_gens_esp()end end)end function solvegen()if s+l.CurrentValue>time()then return end local _,_=pcall(function()for _,_ in pairs(game.Workspace.Map.Ingame.Map:GetChildren())do if _.name=="\x47\x65\x6E\x65\x72\x61\x74\x6F\x72"then _:WaitForChild("\x52\x65\x6D\x6F\x74\x65\x73"):WaitForChild("\x52\x45"):FireServer()end end end) s=time()end function update_all()update_gens_esp_colors() update_plrs_esp_colors() set_stamina_loss(not i.CurrentValue)end while wait(1)do update_all()end
