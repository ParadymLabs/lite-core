Utils = {}

Utils.DebugTypes = {
    INFO = '^5[lite-core]^2',
    WARN = '^5[lite-core]^3',
    ERROR = '^5[lite-core]^1',
    TABLE = '^5[lite-core]^7'
}

Utils.DebugPrint = function(type, ...)
    if not Utils.DebugTypes[type] then type = 'INFO' end
    print(('%s [%s] %s'):format(Utils.DebugTypes[type], type, ...))
end

Utils.DebugTable = function(table)
    Utils.DebugPrint('TABLE', json.encode(table, {indent = true}))
end