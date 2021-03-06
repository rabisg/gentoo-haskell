# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Two-dimensional data tables with rendering functions"
HOMEPAGE="http://hub.darcs.net/kowey/tabular"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/csv-0.1:=[profile?] <dev-haskell/csv-0.2:=[profile?]
	>=dev-haskell/html-1.0:=[profile?] <dev-haskell/html-2.0:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	cabal_chdeps \
	  'mtl >= 1 && < 2.2' 'mtl >= 1 && < 2.3'
}
