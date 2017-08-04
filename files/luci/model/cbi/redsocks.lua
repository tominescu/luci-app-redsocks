-- Copyright (C) 2016 OpenWrt-dist
-- Copyright (C) 2016 Jian Chang <aa65535@live.com>
-- Licensed to the public under the GNU General Public License v3.

local m, s, o

if luci.sys.call("pidof redsocks >/dev/null") == 0 then
	m = Map("redsocks", translate("Redsocks"), "%s - %s" %{translate("Redsocks"), translate("RUNNING")})
else
	m = Map("redsocks", translate("Redsocks"), "%s - %s" %{translate("Redsocks"), translate("NOT RUNNING")})
end

-- General Setting
s = m:section(TypedSection, "redsocks", translate("General Setting"))
s.anonymous = true

o = s:option(Flag, "enable", translate("Enable"))
o.default   = 1
o.rmempty   = false

o = s:option(Value, "local_port", translate("Local Port"))
o.datatype  = "port"
o.rmempty   = false

o = s:option(ListValue, "proxy_type", translate("Proxy Type"))
o:value("socks4", translate("SOCKS4"))
o:value("socks5", translate("SOCKS5"))
o:value("http-connect", translate("HTTP-CONNECT"))
o:value("http-relay", translate("HTTP-RELAY"))
o.rmempty   = false

o = s:option(Value, "proxy_ip", translate("Proxy IP"))
o.datatype  = "ipaddr"
o.rmempty   = false

o = s:option(Value, "proxy_port", translate("Proxy Port"))
o.datatype  = "port"
o.rmempty   = false

return m
