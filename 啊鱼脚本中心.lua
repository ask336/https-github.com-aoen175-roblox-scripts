local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "(啊鱼脚本中心)",
    Icon = "rbxassetid://106566300216007", -- 检查此ID是否正确
    IconThemed = true,
    Author = "(大家多多支持)",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(480, 380),
    Transparent = true,
    Theme = "Dark",
    User = {
        Enabled = true,
        Callback = function() end,
        Anonymous = true
    },
    SideBarWidth = 200,
    ScrollBarEnabled = true,
})

local Tab = Window:Tab({
    Title = "功能",
    Icon = "house",
    Locked = false,
})

local function safeLoad(url)
    local ok, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    if not ok then
        warn("脚本加载失败: " .. tostring(err))
    end
end

Tab:Button({
    Title = "汉化墨水游戏",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/986mn/doo/refs/heads/main/%E5%A2%A8%E6%B0%B4%E6%B1%89%E5%8C%96")
    end
})
Tab:Button({
    Title = "脚本中心",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/S-WTB/-/refs/heads/main/ISIS加载器")
    end
})
Tab:Button({
    Title = "未汉墨水游戏脚本",
    Callback = function()
        safeLoad("https://api.luarmor.net/files/v3/loaders/284c7c5eb4a430a82162018c617e9aa0.lua")
    end
})
Tab:Button({
    Title = "恐鬼症",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/longchneg/GAl/refs/heads/Dragon/Blair")
    end
})
Tab:Button({
    Title = "主脚本",
    Callback = function()
        -- 推荐直接写URL，utf8编码没必要
        safeLoad("https://raw.githubusercontent.com/你的用户名/你的仓库/main/你的脚本.lua")
    end
})
Tab:Button({
    Title = "NOL",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/Syndromehsh/BETA2/refs/heads/main/NOL")
    end
})
Tab:Button({
    Title = "TX退休脚本",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/JsYb666/TX-Free-YYDS/refs/heads/main/FREE-TX-TEAM")
    end
})

-- 复制QQ群号按钮（适用于Roblox脚本UI库，例如WindUI、Rayfield等）
-- 你可以将这段代码添加到你的UI脚本按钮回调中

Tab:Button({
    Title = "复制QQ群号: 679717377",
    Callback = function()
        setclipboard("679717377")
        -- 如支持弹窗提示，可以加上下面这段
        WindUI:Notify({
            Title = "复制成功",
            Description = "QQ群号 679717377 已复制到剪贴板！",
            Duration = 3
        })
    end
})

Tab:Button({
    Title = "加载forsaken脚本",
    Callback = function()
        safeLoad("https://raw.githubusercontent.com/ivannetta/ShitScripts/refs/heads/main/forsaken.lua")
    end
})