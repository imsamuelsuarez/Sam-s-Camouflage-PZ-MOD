local options = {
    {
        id = "MilitaryHelmDefense",
        name = "Military Helmet Defense",
        tooltip = "Sets the bullet defense percentage for military helmets.",
        default = 100,
        min = 0,
        max = 100,
        type = "integer",
    },
}

if SandboxOptions and SandboxOptions.Register then
    for _, option in ipairs(options) do
        SandboxOptions.Register(option)
    end
end