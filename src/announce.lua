local LoathebRotate = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("LoathebRotate")


function LoathebRotate:sendSpellAnnounceMessage(mode, spellName, fail, hunter, destName)
    local announceArg = ''
    if type(mode.announceArg) == 'string' then
        if mode.announceArg == 'destName' then
            announceArg = destName or ''
        elseif mode.announceArg == 'sourceName' then
            announceArg = hunter.name
        elseif mode.announceArg == 'sourceGroup' then
            announceArg = string.format(L["DEFAULT_GROUP_SUFFIX_MESSAGE"], hunter.subgroup or 0)
        end
    elseif type(mode.announceArg) == 'function' then
        announceArg = mode.announceArg(mode, hunter, destName)
    end

    local announceKey = "announce"..mode.modeNameFirstUpper
    if fail then
        announceKey = announceKey.."FailMessage"
    elseif mode.canFail then
        announceKey = announceKey.."SuccessMessage"
    else
        announceKey = announceKey.."Message"
    end

    self:sendAnnounceMessage(self.db.profile[announceKey], announceArg)
end

function LoathebRotate:sendAuraAnnounceMessage(mode, spellName, hunter)
    local announceArg = ''
    if type(mode.announceArg) == 'string' then
        if mode.announceArg == 'destName' then
            announceArg = '' -- We do not know the destination for an aura
        elseif mode.announceArg == 'sourceName' then
            -- While counterintuitive, the source is the hunter
            -- We do not know the exact 'source' which cast the buff, and maybe we never will
            announceArg = hunter.name
        elseif mode.announceArg == 'sourceGroup' then
            announceArg = string.format(L["DEFAULT_GROUP_SUFFIX_MESSAGE"], hunter.subgroup or 0)
        end
    elseif type(mode.announceArg) == 'function' then
        announceArg = mode.announceArg(mode, hunter, nil)
    end

    local announceKey = "announce"..mode.modeNameFirstUpper
    if mode.canFail then
        announceKey = announceKey.."SuccessMessage"
    else
        announceKey = announceKey.."Message"
    end

    self:sendAnnounceMessage(self.db.profile[announceKey], announceArg)
end

-- Send an annouce message to a given channel
function LoathebRotate:sendAnnounceMessage(message, targetName)
    if LoathebRotate.db.profile.enableAnnounces then
        local channelType = LoathebRotate.db.profile.channelType
        local targetChannel = LoathebRotate.db.profile.targetChannel
        LoathebRotate:sendMessage(message, targetName, channelType, targetChannel)
    end
end

-- Write the rotation to a given channel
function LoathebRotate:sendRotationMessage(message)
    if LoathebRotate.db.profile.enableAnnounces then
        local channelType = LoathebRotate.db.profile.rotationReportChannelType
        local targetChannel = LoathebRotate.db.profile.setupBroadcastTargetChannel
        LoathebRotate:sendMessage(message, nil, channelType, targetChannel)
    end
end

-- Send a message to a given channel
function LoathebRotate:sendMessage(message, targetName, channelType, targetChannel)
    local channelNumber = (channelType == "CHANNEL") and GetChannelName(targetChannel) or nil
    if targetName then
        message = string.format(message, targetName)
    end
    SendChatMessage(message, channelType, nil, channelNumber or targetChannel)
end
