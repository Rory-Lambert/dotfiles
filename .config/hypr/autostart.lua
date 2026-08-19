-- Extra autostart processes.
-- o.launch_on_start("my-service")

-- Migrated from hyprland.conf: make Flatpak app data (icons, desktop files)
-- visible to the rest of the session.
hl.env(
  "XDG_DATA_DIRS",
  os.getenv("HOME")
    .. "/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:"
    .. (os.getenv("XDG_DATA_DIRS") or "")
)

-- This ensures plugins are re-loaded (and checked) every time you log in.
o.exec_on_start("hyprpm reload -n")

o.exec_on_start('rclone --vfs-cache-mode writes mount "Photolithography Sharepoint": ~/Photo-Sharepoint')
o.exec_on_start('rclone --vfs-cache-mode writes mount "Ebeam-Sharepoint": ~/Ebeam-Sharepoint/')

-- kanshi was never actually starting: hyprland.conf had "exec-one" instead of
-- "exec-once", which Hyprland just ignored. hyprmoncfg now manages monitor
-- profiles in Omarchy 4 -- uncomment only if you still want kanshi's automatic
-- profile-switching layered on top of that.
-- o.launch_on_start("kanshi")
