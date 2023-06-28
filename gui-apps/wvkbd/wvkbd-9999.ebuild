# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="On-screen virtual keyboard for wlroots"
HOMEPAGE="https://git.sr.ht/~proycon/wvkbd"
EGIT_REPO_URI="https://git.sr.ht/~proycon/wvkbd"

LICENSE="GPL-3"
SLOT="0"

DEPEND="x11-libs/cairo
		x11-libs/pango
		dev-libs/wayland
		x11-libs/libxkbcommon"
RDEPEND="${DEPEND}"

src_install() {
	emake install PREFIX=/usr DESTDIR=${D}
}
