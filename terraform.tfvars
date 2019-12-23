# Azure region to deploy resource in; please choose the same region as your storage from step 3 (example: "westus2")
az_region = "westus2"

# Name of resource group to deploy (example: "demo1")
az_resource_group = "sapglobalwus2dv1ecc-rg"

# Unique domain name for easy VM access (example: "hana-on-azure1")
# Domain name should be all lower case and have no special characters except '-'.
#az_domain_name = "hana-on-azure1"

# Size of the VM to be deployed (example: "Standard_E8s_v3")
# For HANA platform edition, a minimum of 32 GB of RAM is recommended
#vm_size = "Standard_E8s_v3"
vm_size = "Standard M208ms_v2" #(208 vcpus, 5700 GiB memory)

# Path to the public SSH key to be used for authentication (e.g. "~/.ssh/id_rsa.pub")
sshkey_path_public = "~/.ssh/id_rsa.pub"

# Path to the corresponding private SSH key (e.g. "~/.ssh/id_rsa")
sshkey_path_private = "~/.ssh/id_rsa"

# OS user with sudo privileges to be deployed on VM (e.g. "demo")
vm_user = "atadmin"

# SAP system ID (SID) to be used for HANA installation (example: "HN1")
sap_sid = "ECD"

# SAP instance number to be used for HANA installation (example: "01")
sap_instancenum = "00"

# URL to download SAPCAR binary from (see step 6)
url_sap_sapcar_linux = "https://softwarelibraryst.file.core.windows.net/softwarelibraryfs/HANA/SAPCAR"

# URL to download HANA DB server package from (see step 6)
url_sap_hdbserver = "https://softwarelibraryst.file.core.windows.net/softwarelibraryfs/HANA/SAP_HANA_DATABASE"

# Password for the OS sapadm user
pw_os_sapadm = "AtAzECD@19"

# Password for the OS <sid>adm user
pw_os_sidadm = "AtAzECD@19"

# Password for the DB SYSTEM user
# (In MDC installations, this will be for SYSTEMDB tenant only)
pw_db_system = "AtAzECD@19"

# Password for the DB XSA_ADMIN user
#pwd_db_xsaadmin = "XXX"

# Password for the DB SYSTEM user for the tenant DB (MDC installations only)
#pwd_db_tenant = "XXX"

# Password for the DB SHINE_USER user (SHINE demo content only)
#pwd_db_shine = "XXX"

# e-mail address used for the DB SHINE_USER user (SHINE demo content only)
#email_shine = "shine@myemailaddress.com"

# Set this flag to true when installing HANA 2.0 (or false for HANA 1.0)
useHana2 = false

# Set this flag to true when installing the XSA application server
install_xsa = false

# Set this flag to true when installing SHINE demo content (requires XSA)
install_shine = false

# Set this flag to true when installing Cockpit (requires XSA)
install_cockpit = false

# Set this flag to true when installing WebIDE (requires XSA)
install_webide = false

# Set this to be a list of the ip addresses that should be allowed by the NSG.  Empty list means that no restrictions are placed
allow_ips = ["0.0.0.0/0"]
