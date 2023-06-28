# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 toolchain-funcs

DESCRIPTION="Enable swipe-typing for wvkbd"
HOMEPAGE="https://git.sr.ht/~earboxer/swipeGuess"
EGIT_REPO_URI="https://git.sr.ht/~earboxer/swipeGuess"

LICENSE="GPL-3"
SLOT="0"

BDEPEND="app-text/scdoc"
RDEPEND="gui-apps/wtype"

src_compile() {
	$(tc-getCC) ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} -o swipeGuess swipeGuess.c || die
	scdoc <swipeGuess.1.scd >swipeGuess.1 || die
	$(tc-getCC) ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} -o mapScore mapScore.c || die
	scdoc <mapScore.1.scd >mapScore.1 || die
}

src_install() {
	dobin swipeGuess
	doman swipeGuess.1
	dobin completelyTypeWord.sh
	dobin mapScore
	doman mapScore.1
	dodoc map.qwerty.simplegrid.tsv
	dodoc README.md
	dodoc LICENSE
}
