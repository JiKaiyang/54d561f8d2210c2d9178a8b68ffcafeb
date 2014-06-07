# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit git-2 autotools

DESCRIPTION="Add bluetooth-applet for gnome-bluetooth in non-gnome environment"
HOMEPAGE="https://github.com/City-busz/gnome-bluetooth-applet"
EGIT_REPO_URI="${HOMEPAGE}.git"

SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	net-wireless/gnome-bluetooth		
"

src_prepare(){
	eautoreconf
}
