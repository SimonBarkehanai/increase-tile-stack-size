---@param item data.ItemPrototype
local function maybe_increase_stack_size(item)
    for _, v in ipairs(item.flags or {}) do
        if v == "not-stackable" then return end
    end
    item.stack_size = 1000
end

for _, item in pairs(data.raw["item"]) do
    if item.place_as_tile then
        maybe_increase_stack_size(item)
    end
end
