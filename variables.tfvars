# Network configuration
nsx_ip       = "https://vc.44cd5ffd74b0456b957a69.eastus.avs.azure.com/"
nsx_username = "cloudadmin"
nsx_password = "2Thbwc!9@M56"
nsx_tag      = "SofiaAZ1"
dhcp_profile = {
      display_name     = "Sofia-DHCP"
  description      = "DHCP Server for Segment"
    # DHCP Server IP
    server_address = "192.168.0.2/27"
    # Lease
    lease_time     = 86400
    # DNS Server nsx_ip
    dns_servers    = ["10.179.0.192"]
}
overlay_tz = {
    # Overlay TZ Name
    display_name = "TNT48-OVERLAY-TZ"
}
t0_gateway = {
    # T0 GW name
    display_name = "TNT48-T0"
}
t1_gateway = {
    # T1 GW name
    display_name = "TNT48-T1"
}
edge_cluster = {
    # Edge Cluster
    display_name = "TNT48-CLSTR"
}
lup_oct22_segment = {
  description  = "AZ1 Segment"
  display_name = "SG-AZ1"
  subnet = {
    # CIDR for your segment
    cidr                = "192.168.1.1/24"
    # DHCP IP Range for VMs
    dhcp_ranges         = ["192.168.1.4-192.168.1.20"]
    # DHCP Details
    dhcp_v4_config      = {
      server_address = "192.168.0.2/27"
      lease_time     = 86400
      dns_servers    = ["10.179.0.192"]
    }
  }
  tag = {
    scope = "SofiaAZ1"
    tag   = "Bpop"
  }
}

# VM configuration
vsphere_datacenter = "SDDC-Datacenter"
vsphere_server     = "https://vc.44cd5ffd74b0456b957a69.eastus.avs.azure.com/"
vsphere_user       = "cloudadmin@vsphere.local"
vsphere_password   = "300ZS!llir-6"
vm-name            = "sofina_1"
datastore          = "vsanDatastore"
host               = "esx07-r07.p07.44cd5ffd74b0456b957a69.eastus.avs.azure.com"
network            = "SG-AZ1"

vm_list = [
  { name = "vm01", ip = "192.168.1.5", hostname = "host01" },
  { name = "vm02", ip = "192.168.1.6", hostname = "host02" },
  { name = "vm15", ip = "192.168.1.19", hostname = "host15" },
]