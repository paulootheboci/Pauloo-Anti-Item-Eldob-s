local hookId = exports.ox_inventory:registerHook('swapItems', function(payload)
    print(json.encode(payload, { indent = true }))
    return false
end, {
    print = true,
    itemFilter = {
        item_neve = true,
    },
    inventoryFilter = {
        '^glove[%w]+',
        '^trunk[%w]+',
        '^inventory[%w]+',
        'drop' 
    }
})
