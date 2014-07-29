# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="utorrent server for linux"
HOMEPAGE="http://www.utorrent.com/"
SRC_URI="file:///usr/portage/distfiles/utserver.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

src_unpack(){
	unpack ${A}
	mv ${WORKDIR}/utorrent* ${WORKDIR}/utorrent-9999
}

src_install(){
	dodir /opt
	cp -R "${S}/" "${D}/opt/utorrent-server" || die "Install failed!"
}
