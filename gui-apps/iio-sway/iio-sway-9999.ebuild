# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Listen to iio-sensor-proxy and autorotate sway output"
HOMEPAGE="https://github.com/hijackeel/iio-sway"
EGIT_REPO_URI="https://github.com/hijackeel/iio-sway"

LICENSE="GPL-3"
SLOT="0"

DEPEND="gnome-extra/iio-sensor-proxy
		gui-wm/sway"
RDEPEND="${DEPEND}"

src_install() {
	meson_src_install
}
