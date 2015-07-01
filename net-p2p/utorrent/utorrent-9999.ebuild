# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

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
	cp "${FILESDIR}/utserver.conf" "${D}/opt/utorrent-server" || die "Install failed!"
#	chmod 775 "${D}/opt/utorrent-server"
#	chown -R root:users "${D}/opt/utorrent-server"
	dodir /opt/bin
	cat <<EOF >> ${D}/opt/bin/utserver
#!/bin/sh
echo using config: \$@
mkdir -p ~/.utorrent
cd ~/.utorrent
[[ -e "utserver.conf" ]] && cp /opt/utorrent-server/utserver.conf
[[ -e "webgui.zip" ]] && cp /opt/utorrent-server/webgui.zip
./utserver -settingspath . \$@
EOF
	fperms 0755 /opt/bin/utserver
	doicon -s 256 ${FILESDIR}/${PN}.png
	domenu ${FILESDIR}/${PN}.desktop
}
