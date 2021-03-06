# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Wrapper around the pdfinfo command"
HOMEPAGE="https://github.com/chrisdone/pdfinfo"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/process-extras:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-6.12.1:=
	|| ( ( >=dev-haskell/mtl-1.1:=[profile?] <dev-haskell/mtl-2.1:=[profile?] )
		( >=dev-haskell/mtl-2.1.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?] ) )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
"

src_prepare() {
	cabal_chdeps \
		'mtl >= 1.1 && < 2.1 || >= 2.1.1 && < 2.2' 'mtl >= 1.1 && < 2.1 || >= 2.1.1 && < 2.3'
}
