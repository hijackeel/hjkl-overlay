# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Proxies sensor devices (accelerometers, light sensors, compass) to applications through D-Bus"
HOMEPAGE="https://gitlab.freedesktop.org/hadess/iio-sensor-proxy"
SRC_URI="https://gitlab.freedesktop.org/hadess/iio-sensor-proxy/-/archive/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/libgudev
		>=sys-apps/systemd-233
		sys-auth/polkit
		sys-apps/dbus"
RDEPEND="${DEPEND}"

src_install() {
	meson_src_install
}
