# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit vala cmake-utils bzr

DESCRIPTION="Tweak elementary OS"
HOMEPAGE="https://launchpad.net/elementary-tweaks/trunk"
EBZR_REPO_URI="lp:elementary-tweaks"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	>=pantheon-base/switchboard-2.0"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch_user

	vala_src_prepare
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DVALA_EXECUTABLE="${VALAC}"
	)
	cmake-utils_src_configure
}
