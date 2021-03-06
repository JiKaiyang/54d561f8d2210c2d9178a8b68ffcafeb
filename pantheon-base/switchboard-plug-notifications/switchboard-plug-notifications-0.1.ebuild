# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

VALA_MIN_API_VERSION=0.20

inherit vala cmake-utils

DESCRIPTION="This plug can be used to change several keyboard settings"
HOMEPAGE="https://launchpad.net/switchboard-plug-keyboard"
SRC_URI="https://launchpad.net/${PN}/freya/${PV}/+download/lp%3A${P}.tgz -> ${P}.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="nls"

CDEPEND="
	dev-libs/glib
	x11-libs/granite"
RDEPEND="${CDEPEND}
	pantheon-base/switchboard"
DEPEND="${CDEPEND}
	$(vala_depend)
	virtual/pkgconfig
	nls? ( sys-devel/gettext )"

src_unpack(){
	unpack ${A}
	mv ${WORKDIR}/"lp:"${P} ${WORKDIR}/${P}
}

src_prepare() {
	epatch_user

	use nls || sed -i '/add_subdirectory (po)/d' CMakeLists.txt

	cmake-utils_src_prepare
	vala_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DVALA_EXECUTABLE="${VALAC}"
	)
	cmake-utils_src_configure
}
