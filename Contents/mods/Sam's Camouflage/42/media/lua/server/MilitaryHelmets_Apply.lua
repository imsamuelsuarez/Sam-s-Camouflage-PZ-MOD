local helmetList = {
    "Base.Hat_Army",
    "Base.Hat_ArmyWWII",
    "Base.Hat_ArmyDesert",
    "Base.Hat_ArmyDesertNew",
    "Base.Hat_SWAT",
}

local function ApplyHelmetStats()
    local defenseVal = SandboxVars.MilitaryHelmDefense or 100
    local fallChance = SandboxVars.MilitaryHelmFallChance or 0
    local ww2Defense = math.floor(defenseVal * 0.8)

    local scriptManager = getScriptManager()

    for _, fullType in ipairs(helmetList) do
        local itemDef = scriptManager:getItem(fullType)
        if itemDef then
            local finalDefense = defenseVal
            
            if fullType == "Base.Hat_ArmyWWII" then
                finalDefense = ww2Defense
            end

            itemDef:DoParam("BulletDefense = " .. finalDefense)
            itemDef:DoParam("ChanceToFall = " .. fallChance)
        end
    end
end

Events.OnGameStart.Add(ApplyHelmetStats)