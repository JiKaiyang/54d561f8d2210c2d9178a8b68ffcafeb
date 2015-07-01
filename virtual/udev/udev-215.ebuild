# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Virtual to select between different udev daemon providers"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE="systemd"
DEPEND=""
RDEPEND="
	!systemd? ( || ( >=sys-fs/eudev-1.3 
					>=sys-fs/udev-208-r1 ) )
	systemd? ( >=sys-apps/systemd-208:0 )"
