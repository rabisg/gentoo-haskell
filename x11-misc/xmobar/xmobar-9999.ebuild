# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: -all_extensions,+with_threaded,+with_utf8,with_iwlib:wifi,with_alsa:alsa,with_xft:xft,with_datezone:timezone,with_dbus:dbus,with_mpd:mpd,with_inotify:inotify,with_mpris:mpris,with_xpm:xpm

CABAL_FEATURES="bin"
inherit git-r3 haskell-cabal

DESCRIPTION="A Minimalistic Text Based Status Bar"
HOMEPAGE="http://projects.haskell.org/xmobar/"
EGIT_REPO_URI="git://github.com/jaor/xmobar.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="alsa dbus inotify mpd mpris timezone wifi xft xpm"

RDEPEND="x11-libs/libXrandr
	wifi? ( net-wireless/wireless-tools )
	xpm? ( x11-libs/libXpm )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
	>=dev-haskell/http-4000
	>=dev-haskell/mtl-2.1 <dev-haskell/mtl-2.3
	>=dev-haskell/parsec-3.1 <dev-haskell/parsec-3.2
	dev-haskell/regex-compat
	>=dev-haskell/stm-2.3 <dev-haskell/stm-2.5
	dev-haskell/transformers
	>=dev-haskell/utf8-string-0.3 <dev-haskell/utf8-string-0.4
	>=dev-haskell/x11-1.6.1
	>=dev-lang/ghc-7.4.1
	alsa? ( >=dev-haskell/alsa-core-0.5 <dev-haskell/alsa-core-0.6
		>=dev-haskell/alsa-mixer-0.2 <dev-haskell/alsa-mixer-0.3 )
	dbus? ( >=dev-haskell/dbus-0.10 )
	inotify? ( >=dev-haskell/hinotify-0.3 <dev-haskell/hinotify-0.4 )
	mpd? ( >=dev-haskell/libmpd-0.9 <dev-haskell/libmpd-0.10 )
	mpris? ( >=dev-haskell/dbus-0.10 )
	timezone? ( >=dev-haskell/timezone-olson-0.1 <dev-haskell/timezone-olson-0.2
			>=dev-haskell/timezone-series-0.1 <dev-haskell/timezone-series-0.2 )
	xft? ( >=dev-haskell/x11-xft-0.2 <dev-haskell/x11-xft-0.4 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-all_extensions \
		$(cabal_flag alsa with_alsa) \
		$(cabal_flag timezone with_datezone) \
		$(cabal_flag dbus with_dbus) \
		$(cabal_flag inotify with_inotify) \
		$(cabal_flag wifi with_iwlib) \
		$(cabal_flag mpd with_mpd) \
		$(cabal_flag mpris with_mpris) \
		--flag=with_threaded \
		--flag=with_utf8 \
		$(cabal_flag xft with_xft) \
		$(cabal_flag xpm with_xpm)
}

src_install() {
	cabal_src_install

	dodoc samples/xmobar.config readme.md news.md
}
