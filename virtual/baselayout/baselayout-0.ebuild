# Distributed under the terms of the GNU General Public License v2

EAPI=3
SLOT="0"
KEYWORDS="*"
IUSE="-systemd"
RDEPEND="
		systemd? ( sys-apps/systemd )
		!systemd? ( sys-apps/openrc )
		sys-apps/baselayout"
