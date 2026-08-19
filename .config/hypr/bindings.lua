-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Migrated from the old ~/.config/hypr/bindings.conf (pre-Omarchy-4 syntax),
-- which stopped loading once hyprland.lua switched to require()-based config.

-- Special workspace toggles (toggle-special-workspace lives in ~/.local/bin).
hl.unbind("SUPER + ALT + F") -- was: Full width
o.bind("SUPER + ALT + T", "MSFT Teams", "toggle-special-workspace msftteams && omarchy-launch-or-focus-webapp 'Microsoft Teams' 'https://teams.microsoft.com/'")
o.bind("SUPER + ALT + I", "Tidal", "toggle-special-workspace tidal && omarchy-launch-or-focus-webapp 'Tidal' 'https://tidal.com/'")
o.bind("SUPER + ALT + O", "Microsoft Outlook", "toggle-special-workspace outlook && omarchy-launch-or-focus-webapp 'Outlook' 'https://outlook.office.com/'")
o.bind("SUPER + ALT + F", "FABRIC", "toggle-special-workspace fabric && omarchy-launch-or-focus-webapp 'FABRIC' 'http://10.10.100.184/fabric/'")

-- Remote desktop
o.bind("SUPER + SHIFT + V", "Voyager RDP", "remmina -c /home/rory/.local/share/remmina/group_rdp_voyager_10-10-100-165.remmina")
