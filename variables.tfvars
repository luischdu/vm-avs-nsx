# Network configuration
nsx_ip       = "nsx.44cd5ffd74b0456b957a69.eastus.avs.azure.com"
nsx_username = "cloudadmin"
nsx_password = "2Thbwc!9@M56"
nsx_tag      = "SofiaAZ1"
dhcp_profile = {
      display_name     = "Sofia-DHCP"
  description      = "DHCP Server for Segment"
    # DHCP Server IP
    server_address = "10.40.40.224/27"
    # Lease
    lease_time     = 86400
    # DNS Server nsx_ip
    dns_servers    = ["10.40.40.254"]
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
    cidr                = "10.40.40.1/24"
    # DHCP IP Range for VMs
    dhcp_ranges         = ["10.40.40.4-10.40.40.126"]
    # DHCP Details
    dhcp_v4_config      = {
      server_address = "10.40.40.224/27"
      lease_time     = 86400
      dns_servers    = ["10.40.40.254"]
    }
  }
  tag = {
    scope = "SofiaAZ1"
    tag   = "Bpop"
  }
}

# VM configuration
vsphere_datacenter = "SDDC-Datacenter"
vsphere_server     = "vc.44cd5ffd74b0456b957a69.eastus.avs.azure.com"
vsphere_user       = "cloudadmin@vsphere.local"
vsphere_password   = "300ZS!llir-6"
vm-name            = "sofina_1"
datastore          = "vsanDatastore"
host               = "esx07-r07.p07.44cd5ffd74b0456b957a69.eastus.avs.azure.com"


network            = "QA-SG-AZ1"

vm_list = [
  { name = "qa-restrepo", ip = "192.168.1.7", hostname = "SBOGRES" },
  { name = "qa-amazonas", ip = "192.168.1.8", hostname = "SAMZLET" },
  { name = "qa-medellin", ip = "192.168.1.9", hostname = "SANTMED" },
]