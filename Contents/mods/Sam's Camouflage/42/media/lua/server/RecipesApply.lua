function WeaponOnCreateSetRandomModel(recipeData, character)
    local result = recipeData:getAllCreatedItems():get(0)
    if result then
        result:setWeaponSprite("Base.M16_Winter")
    end
end