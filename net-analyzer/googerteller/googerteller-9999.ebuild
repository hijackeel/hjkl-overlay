# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 cmake

DESCRIPTION="Audible feedback on just how much your browsing feeds into Google"
HOMEPAGE="https://github.com/berthubert/googerteller"
EGIT_REPO_URI="https://github.com/hijackeel/googerteller"

LICENSE="MIT"
SLOT="0"

DEPEND="media-libs/pcaudiolib"
RDEPEND="${DEPEND}"

src_install() {
	cmake_src_install
}
