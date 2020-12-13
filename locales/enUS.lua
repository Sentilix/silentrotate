local SilentRotate = select(2, ...)

local L = {

    ["LOADED_MESSAGE"] = "SilentRotate loaded, type /silentrotate for options",
    ["TRANQ_WINDOW_HIDDEN"] = "SilentRotate window hidden. Use /silentrotate toggle to get it back",

    -- Settings
    ["SETTING_GENERAL"] = "General",
    ["SETTING_GENERAL_REPORT"] = "Please report any issue at",
    ["SETTING_GENERAL_DESC"] = "Work in Progress: SilentRotate is an extension of TranqRotate. While TranqRotate is dedicated to hunter tranqshots, SilentRotate adds \"modes\" for other classes or spells.",

    ["LOCK_WINDOW"] = "Lock window",
    ["LOCK_WINDOW_DESC"] = "Lock window",
    ["HIDE_WINDOW_NOT_IN_RAID"] = "Hide the window when not in a raid",
    ["HIDE_WINDOW_NOT_IN_RAID_DESC"] = "Hide the window when not in a raid",
    ["DO_NOT_SHOW_WHEN_JOINING_RAID"] = "Do not show window when joining a raid",
    ["DO_NOT_SHOW_WHEN_JOINING_RAID_DESC"] = "Check this if you don't want the window to show up each time you join a raid",
    ["SHOW_WHEN_TARGETING_BOSS"] = "Show window when you target a tranq-able boss",
    ["SHOW_WHEN_TARGETING_BOSS_DESC"] = "Show window when you target a tranq-able boss",
    ["WINDOW_LOCKED"] = "SilentRotate: Window locked",
    ["WINDOW_UNLOCKED"] = "SilentRotate: Window unlocked",

    ["TEST_MODE_HEADER"] = "Test mode",
    ["ENABLE_ARCANE_SHOT_TESTING"] = "Toggle testing mode",
    ["ENABLE_ARCANE_SHOT_TESTING_DESC"] =
        "While testing mode is enabled, arcane shot will be registered as a tranqshot\n" ..
        "Testing mode will last 10 minutes unless you toggle it off\n" ..
        "For Loatheb, testing consists in using the Recently Bandaged as the healer debuff",
    ["ARCANE_SHOT_TESTING_ENABLED"] = "Arcane shot testing mode enabled for 10 minutes",
    ["ARCANE_SHOT_TESTING_DISABLED"] = "Arcane shot testing mode disabled",

    --- Announces
    ["SETTING_ANNOUNCES"] = "Announces",
    ["ENABLE_ANNOUNCES"] = "Enable announces",
    ["ENABLE_ANNOUNCES_DESC"] = "Enable / disable the announcement.",

    ---- Channels
    ["ANNOUNCES_CHANNEL_HEADER"] = "Announce channel",
    ["MESSAGE_CHANNEL_TYPE"] = "Send messages to",
    ["MESSAGE_CHANNEL_TYPE_DESC"] = "Channel you want to send messages",
    ["MESSAGE_CHANNEL_NAME"] = "Channel name",
    ["MESSAGE_CHANNEL_NAME_DESC"] = "Set the name of the target channel",

    ----- Channels types
    ["CHANNEL_CHANNEL"] = "Channel",
    ["CHANNEL_RAID_WARNING"] = "Raid Warning",
    ["CHANNEL_SAY"] = "Say",
    ["CHANNEL_YELL"] = "Yell",
    ["CHANNEL_PARTY"] = "Party",
    ["CHANNEL_RAID"] = "Raid",
    ["CHANNEL_GUILD"] = "Guild",

    ---- Messages
    ["ANNOUNCES_MESSAGE_HEADER"] = "Announce messages",
    ["SUCCESS_MESSAGE_LABEL"] = "Successful announce message",
    ["FAIL_MESSAGE_LABEL"] = "Fail announce message",
    ["FAIL_WHISPER_LABEL"] = "Fail whisper message",
    ["LOATHEB_MESSAGE_LABEL"] = "Loatheb debuff applied",

    ['DEFAULT_SUCCESS_ANNOUNCE_MESSAGE'] = "Tranqshot done on %s",
    ['DEFAULT_FAIL_ANNOUNCE_MESSAGE'] = "!!! TRANQSHOT FAILED ON %s !!!",
    ['DEFAULT_FAIL_WHISPER_MESSAGE'] = "TRANQSHOT FAILED ! TRANQ NOW !",
    ['DEFAULT_LOATHEB_ANNOUNCE_MESSAGE'] = "Corrupted Mind on %s",

    ['TRANQ_NOW_LOCAL_ALERT_MESSAGE'] = "USE TRANQSHOT NOW !",

    ['TRANQ_SPELL_TEXT'] = "Tranqshot",
    ['MC_SPELL_TEXT'] = "Mind Control",

    ["BROADCAST_MESSAGE_HEADER"] = "Rotation setup text broadcast",
    ["USE_MULTILINE_ROTATION_REPORT"] = "Use multiline for main rotation when reporting",
    ["USE_MULTILINE_ROTATION_REPORT_DESC"] = "Check this option if you want more comprehensible order display",

    --- Modes
    ["FILTER_SHOW_HUNTERS"] = "Tranq",
    ["FILTER_SHOW_PRIESTS"] = "Raz",
    ["FILTER_SHOW_HEALERS"] = "Loatheb",
    ["FILTER_SHOW_ROGUES"] = "Distract",

    --- Sounds
    ["SETTING_SOUNDS"] = "Sounds",
    ["ENABLE_NEXT_TO_TRANQ_SOUND"] = "Play a sound when you are the next to shoot",
    ["ENABLE_TRANQ_NOW_SOUND"] = "Play a sound when you have to shoot your spell",
    ["TRANQ_NOW_SOUND_CHOICE"] = "Select the sound you want to use for the 'cast now' alert",
    ["DBM_SOUND_WARNING"] = "DBM is playing the 'flag taken' sound on each frenzy, it may prevent you from earing gentle sounds from SilentRotate. I would either suggest to pick a strong sound or disable DBM frenzy sound.",

    --- Profiles
    ["SETTING_PROFILES"] = "Profiles",

    --- Raid broadcast messages
    ["BROADCAST_HEADER_TEXT"] = "Hunter tranqshot setup",
    ["BROADCAST_HEADER_TEXT_RAZUVIOUS"] = "Priest MC setup",
    ["BROADCAST_HEADER_TEXT_LOATHEB"] = "Loatheb Healer setup",
    ["BROADCAST_HEADER_TEXT_DISTRACT"] = "Rogue distract setup",
    ["BROADCAST_ROTATION_PREFIX"] = "Rotation",
    ["BROADCAST_BACKUP_PREFIX"] = "Backup",
}

SilentRotate.L = L
