# Listen IP
default["openvpn"]["local"]   = "0.0.0.0"
default["openvpn"]["proto"]   = "tcp"
default["openvpn"]["port"]    = "443"
default["openvpn"]["type"]    = "server"
default["openvpn"]["subnet"]  = "10.8.0.0"
default["openvpn"]["netmask"] = "255.255.0.0"
# Endpoint
default["openvpn"]["gateway"] = "133.242.52.20"
default["openvpn"]["log"]     = "/var/log/openvpn.log"
default["openvpn"]["key_dir"] = "/etc/openvpn/keys"
default["openvpn"]["signing_ca_key"]  = "#{node["openvpn"]["key_dir"]}/ca.key"
default["openvpn"]["signing_ca_cert"] = "#{node["openvpn"]["key_dir"]}/ca.crt"
default["openvpn"]["routes"] = [
    "push route 10.0.0.0 255.255.0.0"
]
default["openvpn"]["script_security"] = 1
default["openvpn"]["user"] = "nobody"
case platform
when "redhat", "centos", "fedora", "amazon"
  default["openvpn"]["group"] = "nobody"
else
  default["openvpn"]["group"] = "nogroup"
end
# Used by helper library to generate certificates/keys
default["openvpn"]["key"]["ca_expire"] = 3650
default["openvpn"]["key"]["expire"]    = 3650
default["openvpn"]["key"]["size"]      = 1024
default["openvpn"]["key"]["country"]   = "JP"
default["openvpn"]["key"]["province"]  = "Osaka"
default["openvpn"]["key"]["city"]      = "Osaka"
default["openvpn"]["key"]["org"]       = "example.com"
default["openvpn"]["key"]["email"]     = "suzuka46@gmail.com"