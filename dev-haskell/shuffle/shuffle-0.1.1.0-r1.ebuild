# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Shuffle tool for UHC"
HOMEPAGE="https://github.com/UU-ComputerScience/shuffle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.14:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/uhc-util-0.1.0.2:=[profile?]
	>=dev-haskell/uuagc-0.9.40.3:=[profile?]
	>=dev-haskell/uuagc-cabal-1.0.3.0:=[profile?]
	>=dev-haskell/uulib-0.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	cabal_chdeps \
		'network >= 2.3' 'network >= 2.3, network-uri'
}