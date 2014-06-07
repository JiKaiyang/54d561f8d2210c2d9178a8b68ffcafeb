# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="The Pantheon desktop from Elementary OS (meta package)"
HOMEPAGE="http://www.elementaryos.org/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="
	pantheon-base/pantheon-shell
	pantheon-base/switchboard
	x11-themes/elementary-icon-theme
	x11-themes/elementary-theme"
