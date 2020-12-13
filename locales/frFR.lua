if (GetLocale() ~= "frFR") then return end

local SilentRotate = select(2, ...)

local L = {

    ["LOADED_MESSAGE"] = "SilentRotate chargé, utilisez /silentrotate pour les options",
    ["TRANQ_WINDOW_HIDDEN"] = "SilentRotate window hidden. Use /silentrotate toggle to get it back",

    -- Settings
    ["SETTING_GENERAL"] = "Général",
    ["SETTING_GENERAL_REPORT"] = "Merci de signaler tout bug rencontré sur",
    ["SETTING_GENERAL_DESC"] = "Nouveau : SilentRotate peut maintenant jouer un son pour vous avertir quand vous devez tranq ! Plusieurs optiosn d'affichage ont été ajoutée pour rendre l'addon moins intrusif",

    ["LOCK_WINDOW"] = "Verrouiller la position de la fênetre",
    ["LOCK_WINDOW_DESC"] = "Verrouiller la position de la fênetre",
    ["HIDE_WINDOW_NOT_IN_RAID"] = "Masquer la fenêtre principale hors raid",
    ["HIDE_WINDOW_NOT_IN_RAID_DESC"] = "Masquer la fenêtre principale hors raid",
    ["DO_NOT_SHOW_WHEN_JOINING_RAID"] = "Ne pas afficher la fenêtre principale lorsque vous rejoignez un raid",
    ["DO_NOT_SHOW_WHEN_JOINING_RAID_DESC"] = "Ne pas afficher la fenêtre principale lorsque vous rejoignez un raid",
    ["SHOW_WHEN_TARGETING_BOSS"] = "Afficher la fenêtre principale lorsque vous ciblez un boss tranquilisable",
    ["SHOW_WHEN_TARGETING_BOSS_DESC"] = "Afficher la fenêtre principale lorsque vous ciblez un boss tranquilisable",
    ["WINDOW_LOCKED"] = "SilentRotate: Fenêtre verrouillée",
    ["WINDOW_UNLOCKED"] = "SilentRotate: Fenêtre déverrouillée",

    ["TEST_MODE_HEADER"] = "Test mode",
    ["ENABLE_ARCANE_SHOT_TESTING"] = "Activer/désactiver le mode test",
    ["ENABLE_ARCANE_SHOT_TESTING_DESC"] =
        "Tant que le mode de test est activé, arcane shot sera considéré comme un tir tranquilisant\n" ..
        "Le mode de test durera 10 minutes ou jusqu'a désactivation\n" ..
        "Pour Loatheb, le test consiste à utiliser le débuff Un bandage a été récemment appliqué",
    ["ARCANE_SHOT_TESTING_ENABLED"] = "Test mode activé pour 10 minutes",
    ["ARCANE_SHOT_TESTING_DISABLED"] = "Test mode désactivé",

    --- Announces
    ["SETTING_ANNOUNCES"] = "Annonces",
    ["ENABLE_ANNOUNCES"] = "Activer les annonces",
    ["ENABLE_ANNOUNCES_DESC"] = "Activer / désactiver les annonces",

    ---- Channels
    ["ANNOUNCES_CHANNEL_HEADER"] = "Canal",
    ["MESSAGE_CHANNEL_TYPE"] = "Canal",
    ["MESSAGE_CHANNEL_TYPE_DESC"] = "Canal à utiliser pour les annonces",
    ["MESSAGE_CHANNEL_NAME"] = "Nom du canal",
    ["MESSAGE_CHANNEL_NAME_DESC"] = "Nom du canal à utiliser",

    ----- Channels types
    ["CHANNEL_CHANNEL"] = "Channel",
    ["CHANNEL_RAID_WARNING"] = "Avertissement raid",
    ["CHANNEL_SAY"] = "Dire",
    ["CHANNEL_YELL"] = "Crier",
    ["CHANNEL_PARTY"] = "Groupe",
    ["CHANNEL_RAID"] = "Raid",
    ["CHANNEL_GUILD"] = "Guilde",

    ---- Messages
    ["ANNOUNCES_MESSAGE_HEADER"] = "Annonces de tir tranquilisant",
    ["SUCCESS_MESSAGE_LABEL"] = "Message de réussite",
    ["FAIL_MESSAGE_LABEL"] = "Message d'échec",
    ["FAIL_WHISPER_LABEL"] = "Message d'échec chuchoté",
    ["LOATHEB_MESSAGE_LABEL"] = "Message d'application du débuff de Loatheb",

    ['DEFAULT_SUCCESS_ANNOUNCE_MESSAGE'] = "Tir tranquilisant fait sur %s",
    ['DEFAULT_FAIL_ANNOUNCE_MESSAGE'] = "!!! TIR TRANQUILISANT RATÉ SUR %s !!!",
    ['DEFAULT_FAIL_WHISPER_MESSAGE'] = "TIR TRANQUILISANT RATE ! TRANQ MAINTENANT !",
    ['DEFAULT_LOATHEB_ANNOUNCE_MESSAGE'] = "Psyché corrompue sur %s",

    ['TRANQ_NOW_LOCAL_ALERT_MESSAGE'] = "TRANQ MAINTENANT !",

    ['TRANQ_SPELL_TEXT'] = "Tir tranquillisant",
    ['MC_SPELL_TEXT'] = "Contrôle mental",

    ["BROADCAST_MESSAGE_HEADER"] = "Rapport de la configuration de la rotation",
    ["USE_MULTILINE_ROTATION_REPORT"] = "Utiliser plusieurs lignes pour la rotation principale",
    ["USE_MULTILINE_ROTATION_REPORT_DESC"] = "Chaque chasseur de la rotation apparaitra sur une ligne numérotée",

    --- Modes
    ["FILTER_SHOW_HUNTERS"] = "Tranq",
    ["FILTER_SHOW_PRIESTS"] = "Razu",
    ["FILTER_SHOW_HEALERS"] = "Horreb",
    ["FILTER_SHOW_ROGUES"] = "Distract",

    --- Sounds
    ["SETTING_SOUNDS"] = "Sons",
    ["ENABLE_NEXT_TO_TRANQ_SOUND"] = "Jouer un son lorsque vous êtes le prochain à devoir tranq",
    ["ENABLE_TRANQ_NOW_SOUND"] = "Jouer un son au moment ou vous devez tranq",
    ["TRANQ_NOW_SOUND_CHOICE"] = "Son à jouer au moment ou vous devez tranq",
    ["DBM_SOUND_WARNING"] = "DBM joue le son de capture de drapeau à chaque frénésie, cela pourrait couvrir un son trop doux. Je suggère de choisir un son assez marquant ou de désactiver les alertes de frénésie DBM si vous choisissez un son plus doux.",

    --- Profiles
    ["SETTING_PROFILES"] = "Profils",

    --- Raid broadcast messages
    ["BROADCAST_HEADER_TEXT"] = "Setup tranqshot chasseurs",
    ["BROADCAST_HEADER_TEXT_RAZUVIOUS"] = "Setup contrôle mental prêtres",
    ["BROADCAST_HEADER_TEXT_LOATHEB"] = "Setup soigneurs Loatheb",
    ["BROADCAST_HEADER_TEXT_DISTRACT"] = "Setup distraction voleurs",
    ["BROADCAST_ROTATION_PREFIX"] = "Rotation",
    ["BROADCAST_BACKUP_PREFIX"] = "Backup",
}

SilentRotate.L = L
