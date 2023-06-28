# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Floating on-screen picker to complement your wayland on-screen keyboard"
HOMEPAGE="https://git.sr.ht/~earboxer/suggpicker"
EGIT_REPO_URI="https://git.sr.ht/~earboxer/suggpicker"

LICENSE="GPL-3"
SLOT="0"

DEPEND="x11-libs/cairo
		x11-libs/pango
		dev-libs/wayland"
RDEPEND="${DEPEND}"

src_install() {
	emake install PREFIX=/usr DESTDIR=${D}
}
