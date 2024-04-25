--set variables for speed an range of the dash
local speed = 10
local range = 5
--calculate next position of the player in all possible directions
function dash_calculate_next_pos(direction, pos)
    if direction == 0 then
         return Position(pos.x, pos.y - 1, pos.z)

    elseif direction == 1 then
         return Position(pos.x + 1, pos.y, pos.z)

    elseif direction == 2 then
         return Position(pos.x, pos.y + 1, pos.z)

    elseif direction == 3 then
         return Position(pos.x - 1, pos.y, pos.z)

    elseif direction == 4 then
         return Position(pos.x - 1, pos.y + 1, pos.z)

    elseif direction == 5 then
            return Position(pos.x + 1, pos.y + 1, pos.z)

    elseif direction == 6 then
            return Position(pos.x - 1, pos.y - 1, pos.z)

    elseif direction == 7 then
            return Position(pos.x + 1, pos.y - 1, pos.z)
    end
end
--execute the charge with calculation of path and check if something is in the way
function dash_move(path)
    --calculate path and check for collisions
end

function dash()
    --locate target and position to where to dash
    local target = nil
    local position = nil
    
    if target ~= nil then
        local path = getPathTo(target:getPosition(), 0, 1, true, true, range)
        if path and #path > 0 then
            dash_move(path, 1)
        end
        return true
    end

    return RETURNVALUE_NOTPOSSIBLE
end