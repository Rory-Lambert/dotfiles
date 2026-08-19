-- Shim so hyprmoncfg's `require("monitors")` include-check finds the real
-- module, which Omarchy namespaces as hypr.monitors. Safe: require() caches
-- by module name, so this doesn't re-run monitors.lua's body.
return require("hypr.monitors")
