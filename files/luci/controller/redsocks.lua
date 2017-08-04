-- Copyright (C) 2016 OpenWrt-dist
-- Copyright (C) 2016 Jian Chang <aa65535@live.com>
-- Licensed to the public under the GNU General Public License v3.

module("luci.controller.redsocks", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/redsocks") then
		return
	end

	entry({"admin", "services", "redsocks"}, cbi("redsocks"), _("Redsocks"), 72).dependent = true
end
